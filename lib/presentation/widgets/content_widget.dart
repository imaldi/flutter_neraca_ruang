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

class ContentWidget extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    var contentId = ref.watch(selectedContentIdProvider);
    var selectedSlug = ref.watch(selectedContentSlugProvider);
    var isVideo = content.tipe == "video";
    var isFoto = content.tipe == "foto";
    var isInfografis = content.tipe == "infografis";
    var isLiked = content.localLike ?? false;
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
                    controller: YoutubePlayerController(
                        initialVideoId: YoutubePlayer.convertUrlToId(
                            content.videoUrl ?? "")!,
                        flags: const YoutubePlayerFlags(autoPlay: false)),
                    showVideoProgressIndicator: true,
                  )
                : isInfografis
                    ? ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: content.listMedia?.length ?? 0,
                        itemBuilder: (c, i) {
                          return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: content.listMedia?[i].images != null
                                  ? FittedBox(
                                      fit: BoxFit.fitHeight,
                                      child: Image.network(
                                        content.listMedia?[i].images ?? "",
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
                          "https://$contentUrl/${content.images}",
                          fit: BoxFit.cover,
                          errorBuilder: (bc, o, st) {
                            return Icon(
                              Icons.broken_image_outlined,
                              size: 2 * extra,
                              color: Color(
                                  isGreenMode ? greenModeColor : primaryColor),
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
                    ref.read(tagsIconLinkProvider.notifier).state =
                        content.petaKota?.kotaIcon2?.replaceAll(" ", "%20") ??
                            "";

                    print(
                        "Link Kota 2: ${content.petaKota?.kotaIcon2?.replaceAll(" ", "%20")}");
                    ref.read(kotaIdProvider.notifier).state =
                        content.kotaId ?? 0;
                    ref.read(kotaNameProvider.notifier).state =
                        content.kotaName ?? "No City";
                    // ref.read(contentsProvider.notifier).fetchContent(
                    //       "Kota Icon",
                    //       type: "",
                    //       kotaId: content.kotaId ?? 0,
                    //     );
                    ref.invalidate(tagsIdProvider);
                    ref.invalidate(tagsNameProvider);
                    context.router.replace(const GreenRoute());
                  },
                  child: isGreenMode
                      ? InkWell(
                          onTap: () {
                            basicResetStates(context, ref);
                            context.router
                                .replace(routeChooser(content.tipe ?? ""));
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                // color: Colors.green,
                                height: tagsIconHeightFromFigma,
                                child: IconWidget(
                                  menuIconNameChooser(content.tipe ?? "",
                                      isGreenMode: isGreenMode),
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
                                content.petaKota?.kotaIcon4
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
                                        content.kotaName ?? "No City",
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
                      content: Text(content.tagsPihak?.tagsName ?? ""),
                      child: IconWidget(
                        // isGreenMode
                        //     ? content.tagsPihak?.tagsIcon2 ?? ""
                        //     :
                        isGreenMode
                            ? content.tagsPihak?.tagsIcon2 ??
                                content.tagsPihak?.tagsIcon1 ??
                                ""
                            : content.tagsPihak?.tagsIcon1 ?? "",
                        margin: const EdgeInsets.symmetric(horizontal: small),
                        isOnlineSource: true,
                        onTap: () {
                          ref.read(tagsIdProvider.notifier).state =
                              content.tagsPihak?.tagsId ?? 0;
                          ref.read(tagsNameProvider.notifier).state =
                              content.tagsPihak?.tagsName ?? "";
                          ref.read(tagsIconLinkProvider.notifier).state =
                              content.tagsPihak?.tagsIcon1 ?? "";
                          // ref.read(contentsProvider.notifier).fetchContent(
                          //     "Tag Pihak",
                          //     type: content.tipe ?? "",
                          //     tagsId: content.tagsPihak?.tagsId ?? 0);
                          // ref.invalidate(kotaIdProvider);
                          // ref.invalidate(kotaNameProvider);
                          context.router
                              .replace(routeChooser(content.tipe ?? ""));
                        },
                      ),
                    ),
                    JustTheTooltip(
                      tailBaseWidth: 0,
                      tailLength: 0,
                      elevation: 0,
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.zero,
                      content: Text(content.tagsTopik?.tagsName ?? ""),
                      child: IconWidget(
                        // isGreenMode
                        //     ? content.tagsTopik?.tagsIcon2 ?? ""
                        //     :
                        isGreenMode
                            ? content.tagsTopik?.tagsIcon2 ??
                                content.tagsTopik?.tagsIcon1 ??
                                ""
                            : content.tagsTopik?.tagsIcon1 ?? "",
                        margin: const EdgeInsets.symmetric(horizontal: small),
                        isOnlineSource: true,
                        onTap: () {
                          ref.read(tagsIdProvider.notifier).state =
                              content.tagsTopik?.tagsId ?? 0;
                          ref.read(tagsNameProvider.notifier).state =
                              content.tagsTopik?.tagsName ?? "";
                          ref.read(tagsIconLinkProvider.notifier).state =
                              content.tagsTopik?.tagsIcon1 ?? "";
                          // ref.read(contentsProvider.notifier).fetchContent(
                          //     "tags topik",
                          //     type: content.tipe ?? "",
                          //     tagsId: content.tagsTopik?.tagsId ?? 0);
                          //
                          // ref.invalidate(kotaIdProvider);
                          // ref.invalidate(kotaNameProvider);
                          context.router
                              .replace(routeChooser(content.tipe ?? ""));
                        },
                      ),
                    ),
                    JustTheTooltip(
                      tailBaseWidth: 0,
                      tailLength: 0,
                      elevation: 0,
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.zero,
                      content: Text(content.tagsOtonomi?.tagsName ?? ""),
                      child: IconWidget(
                        // isGreenMode
                        //     ? content.tagsOtonomi?.tagsIcon2 ?? ""
                        //     :
                        isGreenMode
                            ? content.tagsOtonomi?.tagsIcon2 ??
                                content.tagsOtonomi?.tagsIcon1 ??
                                ""
                            : content.tagsOtonomi?.tagsIcon1 ?? "",
                        margin: const EdgeInsets.symmetric(horizontal: small),
                        isOnlineSource: true,
                        onTap: () {
                          ref.read(tagsIdProvider.notifier).state =
                              content.tagsOtonomi?.tagsId ?? 0;
                          ref.read(tagsNameProvider.notifier).state =
                              content.tagsOtonomi?.tagsName ?? "";
                          ref.read(tagsIconLinkProvider.notifier).state =
                              content.tagsOtonomi?.tagsIcon1 ?? "";
                          // ref.read(contentsProvider.notifier).fetchContent(
                          //     "tags otonomi",
                          //     type: content.tipe ?? "",
                          //     tagsId: content.tagsOtonomi?.tagsId ?? 0);
                          //
                          // ref.invalidate(kotaIdProvider);
                          // ref.invalidate(kotaNameProvider);
                          context.router
                              .replace(routeChooser(content.tipe ?? ""));
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
                  '${content.sourceName ?? ""} 26/05/2023, 12:00 WIB',
                  style: isGreenMode
                      ? Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: const Color(greenModeColor))
                      : Theme.of(context).textTheme.bodySmall,
                ),
              ),
              InkWell(
                onTap: contentId != content.id
                    ? () {
                        ref.read(selectedContentIdProvider.notifier).state =
                            content.id ?? 0;
                        ref.read(selectedContentSlugProvider.notifier).state =
                            content.slug ?? "";
                        ref
                            .read(contentsProvider.notifier)
                            .markContentAsRed(content.slug ?? "");
                      }
                    : null,
                child: Container(
                  margin: const EdgeInsets.only(top: normal, bottom: medium),
                  child: Text(
                    '${content.judul}',
                    style: isGreenMode
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
                    '${content.sourceName ?? ""} 26/05/2023, 12:00 WIB',
                    style: isGreenMode
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
                          itemCount: content.listMedia?.length ?? 0,
                          itemBuilder: (c, i) {
                            return SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: content.listMedia?[i].images != null
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
                                                    content.listMedia?[i]
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
                                                "${(content.listMedia?[i].captions?.length ?? 0) > 100 ? "${content.listMedia?[i].captions?.substring(0, 100)}..." : content.listMedia?[i].captions}",
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
                            "https://$contentUrl/${content.images}",
                            fit: BoxFit.cover,
                            errorBuilder: (bc, o, st) {
                              return Icon(
                                Icons.broken_image_outlined,
                                size: 2 * extra,
                                color: Color(isGreenMode
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
                  constraints: contentId == (content.id ?? -1)
                      ? null
                      : const BoxConstraints(maxHeight: 200),
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child:
                        // Text("${content.keterangan}"),
                        HtmlWidget(
                      "${content.keterangan}",
                      textStyle: const TextStyle(color: Colors.black),
                      onLoadingBuilder: (bc, e, d) => Center(
                          child: CircularProgressIndicator(
                        color:
                            Color(isGreenMode ? greenModeColor : primaryColor),
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
                isGreenMode ? iconDibaca2 : iconDibaca,
                size: huge,
              ),
              FittedBox(
                  child: Row(
                children: [
                  Text("${content.totalRead ?? "0"} "),
                  const Text("Reads"),
                ],
              )),
              InkWell(
                onTap: isLiked
                    ? null
                    : () {
                        ref
                            .read(contentsProvider.notifier)
                            .likeContent(content);
                        // myToast("the slug: ${content.slug}");
                      },
                child: isLiked
                    ? Icon(
                        Icons.thumb_up,
                        color:
                            Color(isGreenMode ? greenModeColor : primaryColor),
                      )
                    : IconWidget(
                        isGreenMode ? iconSuka2 : iconSuka,
                        size: huge,
                      ),
              ),
              FittedBox(
                child: Row(
                  children: [
                    Text("${content.totalLike ?? "0"} "),
                    Text("Likes"),
                  ],
                ),
              ),
              InkWell(
                onTap: contentId != content.id
                    ? () {
                        // ref.read(selectedContentIdProvider.notifier).state =
                        //     content.id ?? 0;

                        /// Hanya menampilkan komentar, tidak menambah jumlah read / melihat detail
                        ref.read(selectedContentSlugProvider.notifier).state =
                            content.slug ?? "";
                        myToast("Content ID: $contentId");
                        ref
                            .read(commentsProvider.notifier)
                            .fetchCommentFromAPI();

                        // ref
                        //     .read(contentsProvider.notifier)
                        //     .markContentAsRed(content.slug ?? "");
                      }
                    : null,
                child: IconWidget(
                  isGreenMode ? iconCommments2 : iconCommments,
                  size: huge,
                ),
              ),
              FittedBox(
                child: Row(
                  children: [
                    Text("${content.totalComment ?? "0"} "),
                    const FittedBox(
                      child: Text(
                        "Comments",
                      ),
                    ),
                  ],
                ),
              ),
              IconWidget(
                isGreenMode ? iconTeruskan2 : iconTeruskan,
                size: huge,
                onTap: () async {
                  await Share.share(
                      'Neraca Ruang at: https://neracaruang.com/${content.tipe ?? ""}/${content.slug}');
                  // .then((v) => );
                  ref
                      .read(contentsProvider.notifier)
                      .addShareCount(content.slug ?? "");
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
            visible:
                selectedSlug.isNotEmpty && selectedSlug == (content.slug ?? ""),
            child: CommentWidget(isGreenPage: isGreenMode)),
        SizedBox(height: huge),
      ],
    );
  }
}
