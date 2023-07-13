import 'package:flutter_neraca_ruang/presentation/widgets/comment_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../core/helper_functions/menu_icon_name_chooser.dart';
import '../../core/helper_functions/route_chooser.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import '../../logic/state_management/riverpod/comment_providers.dart';
import 'IconWidget.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

class ContentWidget extends ConsumerStatefulWidget {
  final Datum content;
  // final bool isFoto;
  final bool isGreenMode;
  // final bool isVideoMode;
  // final bool isInfografis;
  const ContentWidget(this.content,
      {
      // this.isFoto = false,
      // this.isVideoMode = false,
      this.isGreenMode = false,
      // this.isInfografis = false,
      Key? key})
      : super(key: key);

  @override
  ConsumerState<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends ConsumerState<ContentWidget> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    super.initState();
    youtubePlayerController = YoutubePlayerController(
        initialVideoId:
            YoutubePlayer.convertUrlToId(widget.content.videoUrl ?? "") ?? "",
        flags: const YoutubePlayerFlags(autoPlay: false));
  }

  @override
  Widget build(BuildContext context) {
    var contentId = ref.watch(selectedContentIdProvider);
    var selectedSlug = ref.watch(selectedContentSlugProvider);
    var isVideo = widget.content.tipe == "video";
    var isFoto = widget.content.tipe == "foto";
    var isInfografis = widget.content.tipe == "infografis";
    var isLiked = widget.content.localLike ?? false;
    var isLogin = ref.watch(authStatusProvider).value != null;
    var commentList = ref.watch(commentsProvider);
    return Column(
      children: [
        Visibility(
          visible: !(isInfografis || isFoto),
          child: Container(
            // color: Colors.green,
            margin: const EdgeInsets.only(bottom: normal),
            constraints: BoxConstraints(
              minHeight: 200,
              maxHeight: 200,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: isVideo
                ? YoutubePlayer(
                    controlsTimeOut: Duration(seconds: 5),
                    controller: youtubePlayerController,
                    showVideoProgressIndicator: true,
                  )
                : isInfografis
                    ? ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.content.listMedia?.length ?? 0,
                        itemBuilder: (c, i) {
                          return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: widget.content.listMedia?[i].images != null
                                  ? FittedBox(
                                      fit: BoxFit.fitHeight,
                                      child: Image.network(
                                        widget.content.listMedia?[i].images ??
                                            "",
                                        errorBuilder: (c, o, s) {
                                          return const IconWidget(iconError);
                                        },
                                      ),
                                    )
                                  : const IconWidget(iconError));
                        })
                    : FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Image.network(
                          // isUsingThumbnail
                          //     ? "https://$thumbnailUrl/${content.thumbnail}"
                          //     :
                          "https://$contentUrl/${widget.content.images}",
                          fit: BoxFit.cover,
                          errorBuilder: (bc, o, st) {
                            return Icon(
                              Icons.broken_image_outlined,
                              size: 2 * extra,
                              color: Color(widget.isGreenMode
                                  ? greenModeColor
                                  : primaryColor),
                            );
                            // Text(content.images ?? "Image not Found");
                          },
                        ),
                      ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: medium),
          margin:
              EdgeInsets.only(bottom: (isInfografis || isFoto) ? normal : big),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    /// FIXME ga tau kenapa disini ada pesan error
                    // ref.read(tagsIconLinkProvider.notifier).state =
                    var cityIcon = widget.content.petaKota?.kotaIcon2
                            ?.replaceAll(" ", "%20") ??
                        "";

                    print(
                        "Link Kota 2: ${widget.content.petaKota?.kotaIcon2?.replaceAll(" ", "%20")}");
                    // ref.read(kotaIdProvider.notifier).state =
                    //     content.kotaId ?? 0;
                    setContentListParams(
                      ref,
                      kotaId: widget.content.kotaId ?? 0,
                      cityIconLink: cityIcon,
                      resetTipe: true,
                    );

                    ref.read(kotaNameProvider.notifier).state =
                        widget.content.kotaName ?? "No City";
                    // ref.read(kota.notifier).state =
                    //     content.petaKota.kotaIcon2 ?? "No City";
                    // ref.read(contentsProvider.notifier).fetchContent(
                    //       "Kota Icon",
                    //       type: "",
                    //       kotaId: content.kotaId ?? 0,
                    //     );
                    // ref.invalidate(tagsIdProvider);
                    ref.invalidate(tagsNameProvider);
                    context.router.replace(const GreenRoute());
                  },
                  child: widget.isGreenMode
                      ? InkWell(
                          onTap: () {
                            setContentListParams(ref,
                                tipe: widget.content.tipe ?? "");
                            context.router.replace(
                                routeChooser(widget.content.tipe ?? ""));
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                // color: Colors.green,
                                height: tagsIconHeightFromFigma,
                                child: IconWidget(
                                  menuIconNameChooser(widget.content.tipe ?? "",
                                      isGreenMode: widget.isGreenMode),
                                  // isOnlineSource: true,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: mapIconHeightFromFigma,
                              child: Image.network(
                                // 'assets/icons/icon_daerah/${content.kotaName?.toLowerCase().replaceAll(" ", "_")}_4.png',
                                widget.content.petaKota?.kotaIcon4
                                        ?.replaceAll(" ", "%20") ??
                                    "",
                                // isOnlineSource: true,

                                errorBuilder: (bc, o, st) => FittedBox(
                                  child: Column(
                                    children: [
                                      const Icon(
                                        Icons.location_city,
                                        color: Color(primaryColor),
                                      ),
                                      Text(
                                        widget.content.kotaName ?? "No City",
                                        style: const TextStyle(
                                            fontSize: normal,
                                            color: Color(primaryColor)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    JustTheTooltip(
                      tailBaseWidth: 0,
                      tailLength: 0,
                      elevation: 0,
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.zero,
                      // preferredDirection: AxisDirection.up,
                      content: Text(widget.content.tagsPihak?.tagsName ?? ""),
                      child: IconWidget(
                        // isGreenMode
                        //     ? content.tagsPihak?.tagsIcon2 ?? ""
                        //     :
                        widget.isGreenMode
                            ? widget.content.tagsPihak?.tagsIcon2 ??
                                widget.content.tagsPihak?.tagsIcon1 ??
                                ""
                            : widget.content.tagsPihak?.tagsIcon1 ?? "",
                        margin: const EdgeInsets.symmetric(horizontal: small),
                        isOnlineSource: true,
                        onTap: () {
                          setContentListParams(ref,
                              tipe: widget.content.tipe ?? "",
                              tagsId: widget.content.tagsPihak?.tagsId ?? 0);

                          ref.read(tagsNameProvider.notifier).state =
                              widget.content.tagsPihak?.tagsName ?? "";
                          ref.read(tagsIconLinkProvider.notifier).state =
                              widget.content.tagsPihak?.tagsIcon1 ?? "";
                          // ref.read(contentsProvider.notifier).fetchContent(
                          //     "Tag Pihak",
                          //     type: content.tipe ?? "",
                          //     tagsId: content.tagsPihak?.tagsId ?? 0);
                          // ref.invalidate(kotaIdProvider);
                          // ref.invalidate(kotaNameProvider);
                          context.router
                              .replace(routeChooser(widget.content.tipe ?? ""));
                        },
                      ),
                    ),
                    JustTheTooltip(
                      tailBaseWidth: 0,
                      tailLength: 0,
                      elevation: 0,
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.zero,
                      content: Text(widget.content.tagsTopik?.tagsName ?? ""),
                      child: IconWidget(
                        // isGreenMode
                        //     ? content.tagsTopik?.tagsIcon2 ?? ""
                        //     :
                        widget.isGreenMode
                            ? widget.content.tagsTopik?.tagsIcon2 ??
                                widget.content.tagsTopik?.tagsIcon1 ??
                                ""
                            : widget.content.tagsTopik?.tagsIcon1 ?? "",
                        margin: const EdgeInsets.symmetric(horizontal: small),
                        isOnlineSource: true,
                        onTap: () {
                          setContentListParams(ref,
                              tipe: widget.content.tipe ?? "",
                              tagsId: widget.content.tagsTopik?.tagsId ?? 0);

                          ref.read(tagsNameProvider.notifier).state =
                              widget.content.tagsTopik?.tagsName ?? "";
                          ref.read(tagsIconLinkProvider.notifier).state =
                              widget.content.tagsTopik?.tagsIcon1 ?? "";
                          // ref.read(contentsProvider.notifier).fetchContent(
                          //     "tags topik",
                          //     type: content.tipe ?? "",
                          //     tagsId: content.tagsTopik?.tagsId ?? 0);
                          //
                          // ref.invalidate(kotaIdProvider);
                          // ref.invalidate(kotaNameProvider);
                          context.router
                              .replace(routeChooser(widget.content.tipe ?? ""));
                        },
                      ),
                    ),
                    JustTheTooltip(
                      tailBaseWidth: 0,
                      tailLength: 0,
                      elevation: 0,
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.zero,
                      content: Text(widget.content.tagsOtonomi?.tagsName ?? ""),
                      child: IconWidget(
                        // isGreenMode
                        //     ? content.tagsOtonomi?.tagsIcon2 ?? ""
                        //     :
                        widget.isGreenMode
                            ? widget.content.tagsOtonomi?.tagsIcon2 ??
                                widget.content.tagsOtonomi?.tagsIcon1 ??
                                ""
                            : widget.content.tagsOtonomi?.tagsIcon1 ?? "",
                        margin: const EdgeInsets.symmetric(horizontal: small),
                        isOnlineSource: true,
                        onTap: () {
                          setContentListParams(ref,
                              tipe: widget.content.tipe ?? "",
                              tagsId: widget.content.tagsOtonomi?.tagsId ?? 0);

                          ref.read(tagsNameProvider.notifier).state =
                              widget.content.tagsOtonomi?.tagsName ?? "";
                          ref.read(tagsIconLinkProvider.notifier).state =
                              widget.content.tagsOtonomi?.tagsIcon1 ?? "";
                          // ref.read(contentsProvider.notifier).fetchContent(
                          //     "tags otonomi",
                          //     type: content.tipe ?? "",
                          //     tagsId: content.tagsOtonomi?.tagsId ?? 0);
                          //
                          // ref.invalidate(kotaIdProvider);
                          // ref.invalidate(kotaNameProvider);
                          context.router
                              .replace(routeChooser(widget.content.tipe ?? ""));
                        },
                      ),
                    ),
                  ]
                      .map((e) => Container(
                            constraints: const BoxConstraints(
                              minHeight: tagsIconHeightFromFigma,
                              maxHeight: tagsIconHeightFromFigma,
                            ),
                            child: e,
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(medium),
          child: Column(
            children: [
              Visibility(
                visible: !(isInfografis || isFoto),
                child: Text(
                  '${widget.content.sourceName ?? ""} 26/05/2023, 12:00 WIB',
                  style: widget.isGreenMode
                      ? Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: const Color(greenModeColor))
                      : Theme.of(context).textTheme.bodySmall,
                ),
              ),
              InkWell(
                onTap: contentId != widget.content.id
                    ? () {
                        ref.read(selectedContentIdProvider.notifier).state =
                            widget.content.id ?? 0;
                        ref.read(selectedContentSlugProvider.notifier).state =
                            widget.content.slug ?? "";
                        ref
                            .read(contentsProvider.notifier)
                            .markContentAsRed(widget.content.slug ?? "");
                      }
                    : null,
                child: Container(
                  margin: const EdgeInsets.only(top: normal, bottom: medium),
                  child: Text(
                    '${widget.content.judul}',
                    style: widget.isGreenMode
                        ? Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: const Color(greenModeColor))
                        : Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Visibility(
                visible: isInfografis || isFoto,
                child: Container(
                  margin: EdgeInsets.only(bottom: medium),
                  child: Text(
                    '${widget.content.sourceName ?? ""} 26/05/2023, 12:00 WIB',
                    style: widget.isGreenMode
                        ? Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: const Color(greenModeColor))
                        : Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
              Visibility(
                visible: isInfografis || isFoto,
                child: Container(
                  // color: Colors.green,
                  margin: const EdgeInsets.only(bottom: normal),
                  constraints: BoxConstraints(
                    minHeight: 240, // TODO nanti tambahkan persentase layar
                    maxHeight: 240,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                  child: !isFoto // isFoto actually
                      ? ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.content.listMedia?.length ?? 0,
                          itemBuilder: (c, i) {
                            return SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: widget.content.listMedia?[i].images !=
                                        null
                                    ? Center(
                                        child: Column(
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: SizedBox(
                                                height: 200,
                                                width: double.infinity,
                                                child: FittedBox(
                                                  fit: BoxFit.fitHeight,
                                                  child: Image.network(
                                                    widget.content.listMedia?[i]
                                                            .images ??
                                                        "",
                                                    errorBuilder: (c, o, s) {
                                                      return const IconWidget(
                                                          iconError);
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              // color: Colors.blueAccent,
                                              padding: const EdgeInsets.only(
                                                  top: normal,
                                                  // left: normal,
                                                  right: huge),
                                              child: Text(
                                                "${(widget.content.listMedia?[i].captions?.length ?? 0) > 100 ? "${widget.content.listMedia?[i].captions?.substring(0, 100)}..." : widget.content.listMedia?[i].captions}",
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    : const IconWidget(iconError));
                          })
                      : FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Image.network(
                            // isUsingThumbnail
                            //     ? "https://$thumbnailUrl/${content.thumbnail}"
                            //     :
                            "https://$contentUrl/${widget.content.images}",
                            fit: BoxFit.cover,
                            errorBuilder: (bc, o, st) {
                              return Icon(
                                Icons.broken_image_outlined,
                                size: 2 * extra,
                                color: Color(widget.isGreenMode
                                    ? greenModeColor
                                    : primaryColor),
                              );
                              // Text(content.images ?? "Image not Found");
                            },
                          ),
                        ),
                ),
              ),
              Visibility(
                visible: !(isInfografis || isFoto),
                child: Container(
                  constraints: contentId == (widget.content.id ?? -1)
                      ? null
                      : const BoxConstraints(maxHeight: 200),
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child:
                        // Text("${content.keterangan}"),
                        HtmlWidget(
                      "${widget.content.keterangan}",
                      textStyle: const TextStyle(color: Colors.grey),
                      onLoadingBuilder: (bc, e, d) => Center(
                          child: CircularProgressIndicator(
                        color: Color(
                            widget.isGreenMode ? greenModeColor : primaryColor),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconWidget(
                widget.isGreenMode ? iconDibaca2 : iconDibaca,
                size: huge,
              ),
              FittedBox(
                  child: Text("${widget.content.totalRead ?? "0"} Reads")),
              InkWell(
                onTap: isLiked
                    ? null
                    : () {
                        ref
                            .read(contentsProvider.notifier)
                            .likeContent(widget.content);
                        // myToast("the slug: ${content.slug}");
                      },
                child: isLiked
                    ? Icon(
                        Icons.thumb_up,
                        color: Color(
                            widget.isGreenMode ? greenModeColor : primaryColor),
                      )
                    : IconWidget(
                        widget.isGreenMode ? iconSuka2 : iconSuka,
                        size: huge,
                      ),
              ),
              FittedBox(
                  child: Text("${widget.content.totalLike ?? "0"} Likes")),
              InkWell(
                onTap: contentId != widget.content.id
                    ? () {
                        // ref.read(selectedContentIdProvider.notifier).state =
                        //     content.id ?? 0;

                        /// Hanya menampilkan komentar, tidak menambah jumlah read / melihat detail
                        ref.read(selectedContentSlugProvider.notifier).state =
                            widget.content.slug ?? "";
                        // myToast("Content ID: $contentId");
                        ref
                            .read(commentsProvider.notifier)
                            .fetchCommentFromAPI();

                        // ref
                        //     .read(contentsProvider.notifier)
                        //     .markContentAsRed(content.slug ?? "");
                      }
                    : null,
                child: IconWidget(
                  widget.isGreenMode ? iconCommments2 : iconCommments,
                  size: huge,
                ),
              ),
              FittedBox(
                  child:
                      Text("${widget.content.totalComment ?? "0"} Comments")),
              IconWidget(
                widget.isGreenMode ? iconTeruskan2 : iconTeruskan,
                size: huge,
                onTap: () async {
                  await Share.share(
                      'Neraca Ruang at: https://neracaruang.com/${widget.content.tipe ?? ""}/${widget.content.slug}');
                  // .then((v) => );
                  ref
                      .read(contentsProvider.notifier)
                      .addShareCount(widget.content.slug ?? "");
                },
              ),
            ]
                .map((e) => Expanded(
                      child: e,
                    ))
                .toList(),
          ),
        ),
        // ref.watch(commentProvider)
        Visibility(
            visible: selectedSlug.isNotEmpty &&
                selectedSlug == (widget.content.slug ?? ""),
            child: CommentWidget(isGreenPage: widget.isGreenMode)),
        SizedBox(height: huge),
      ],
    );
  }
}
