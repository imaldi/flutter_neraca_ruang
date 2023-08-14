import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_neraca_ruang/core/consts/assets.dart';
import 'package:flutter_neraca_ruang/core/consts/num_consts.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../core/helper_functions/route_chooser.dart';
import '../../core/router/app_router.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import '../../logic/state_management/riverpod/comment_providers.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/button_load_more.dart';
import '../widgets/comment_widget.dart';
import '../widgets/eits_bayar_dulu.dart';
import '../widgets/my_toast.dart';
import '../widgets/social_media_panel_widget.dart';

@RoutePage()
class DatumTypeFilterPage extends ConsumerStatefulWidget {
  const DatumTypeFilterPage({Key? key}) : super(key: key);

  @override
  _DatumTypeFilterPageState createState() => _DatumTypeFilterPageState();
}

class _DatumTypeFilterPageState extends ConsumerState<DatumTypeFilterPage> {
  // @override
  // void dispose() {
  //   basicResetStates(context, ref);
  //   super.dispose();
  // }
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    showBayarDialog(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var list = ref.watch(contentsProvider);
    var contentId = ref.watch(selectedContentIdProvider);
    var selectedSlug = ref.watch(selectedContentSlugProvider);

    var isLogin = ref.watch(authStatusProvider).value != null;

    return DefaultTabController(
      length: mainTabLength,
      child: WillPopScope(
        onWillPop: () {
          return basicOnWillPop(context, ref);
        },
        child: SafeArea(
          child: Scaffold(
            key: scaffoldKey,
            appBar: appBarWidget(
              context, ref: ref,
              scaffoldKey: scaffoldKey,
              // appbarTitle: appbarTitle,
              // appbarBackgroundImage: Center(
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: IconWidget(
              //           // 'assets/icons/icon_daerah/${appbarTitle?.toLowerCase().replaceAll(" ", "_")}_2.png',
              //           iconUrl,
              //           size: huge + medium,
              //           isOnlineSource: true,
              //           customOnErrorWidget: Column(
              //             children: [
              //               Icon(
              //                 Icons.location_city,
              //                 color: Color(greenModeColor),
              //               ),
              //               Text(
              //                 appbarTitle ?? "",
              //                 style:
              //                 const TextStyle(color: Color(greenModeColor)),
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // isGreenMode: true,
              // tabsChild: [
              //   Image.asset("assets/images/oto.png"),
              //   Image.asset("assets/images/kons.png"),
              //   Image.asset("assets/images/mada.png"),
              // ], resetStates: () {
              //   basicResetStates(context, ref);
              // }
            ),
            body: list.when(data: (data) {
              var contentList = data;
              if (contentList != null && contentList.isEmpty) {
                return const Center(
                  child: Text("Data Tidak ditemukan"),
                );
              }
              if (contentList == null) {
                return const Center(
                  child: Text("Hasil pencarian tidak ditemukan"),
                );
              }
              return SingleChildScrollView(
                controller: sl<ScrollController>(),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: extra),
                  child: Column(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: contentList.length,
                          itemBuilder: (c, i) {
                            var content = contentList[i];
                            var isVideoMode = content.tipe == "video";
                            var isInfografis = content.tipe == "infografis";
                            var isUsingThumbnail = content.tipe == "foto";
                            var isLiked = content.localLike ?? false;

                            // var thumbnailUrl = content.thumbnail;
                            return Column(
                              children: [
                                Container(
                                  // color: Colors.green,
                                  margin: const EdgeInsets.only(bottom: normal),
                                  constraints: BoxConstraints(
                                    minHeight: 200,
                                    maxHeight: 200,
                                    minWidth: MediaQuery.of(context).size.width,
                                  ),
                                  child: isVideoMode
                                      ? YoutubePlayer(
                                          controller: YoutubePlayerController(
                                              initialVideoId:
                                                  YoutubePlayer.convertUrlToId(
                                                      content.videoUrl ?? "")!,
                                              flags: const YoutubePlayerFlags(
                                                  autoPlay: false)),
                                          showVideoProgressIndicator: true,
                                        )
                                      :
                                      // ? Center(child: Builder(builder: (context) {
                                      //     YoutubePlayerController _controller = YoutubePlayerController(
                                      //       initialVideoId: 'iLnmTe5Q2Qw',
                                      //       flags: YoutubePlayerFlags(
                                      //         autoPlay: true,
                                      //         mute: true,
                                      //       ),
                                      //     );
                                      //     late PlayerState _playerState;
                                      //     late YoutubeMetaData _videoMetaData;
                                      //     double _volume = 100;
                                      //     bool _muted = false;
                                      //     bool _isPlayerReady = false;
                                      //     void listener() {
                                      //       if (_isPlayerReady &&
                                      //           mounted &&
                                      //           !_controller.value.isFullScreen) {
                                      //         setState(() {
                                      //           _playerState = _controller.value.playerState;
                                      //           _videoMetaData = _controller.metadata;
                                      //         });
                                      //       }
                                      //     }
                                      //
                                      //     return
                                      //       YoutubePlayer(
                                      //       controller: _controller,
                                      //       showVideoProgressIndicator: true,
                                      //       progressIndicatorColor: Colors.amber,
                                      //       progressColors: const ProgressBarColors(
                                      //         playedColor: Colors.amber,
                                      //         handleColor: Colors.amberAccent,
                                      //       ),
                                      //       onReady: () {
                                      //         _controller.addListener(listener);
                                      //       },
                                      //     );
                                      //   }))
                                      // :
                                      isInfografis
                                          ? ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  content.listMedia?.length ??
                                                      0,
                                              itemBuilder: (c, i) {
                                                return SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    child: content.listMedia?[i]
                                                                .images !=
                                                            null
                                                        ? FittedBox(
                                                            fit: BoxFit
                                                                .fitHeight,
                                                            child:
                                                                Image.network(
                                                              content
                                                                      .listMedia?[
                                                                          i]
                                                                      .images ??
                                                                  "",
                                                              errorBuilder:
                                                                  (c, o, s) {
                                                                return const IconWidget(
                                                                    iconError);
                                                              },
                                                            ),
                                                          )
                                                        : const IconWidget(
                                                            iconError));
                                              })
                                          : FittedBox(
                                              fit: BoxFit.fitHeight,
                                              child: Image.network(
                                                isUsingThumbnail
                                                    ? "https://$thumbnailUrl/${content.thumbnail}"
                                                    : "https://$contentUrl/${content.images}",
                                                fit: BoxFit.cover,
                                                errorBuilder: (bc, o, st) {
                                                  return const Icon(
                                                    Icons.broken_image_outlined,
                                                    size: 2 * extra,
                                                    color: Color(primaryColor),
                                                  );
                                                  // Text(content.images ?? "Image not Found");
                                                },
                                              ),
                                            ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: medium),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          onTap:
                                              // isGreenMode
                                              //     ? () {
                                              //         basicResetStates(context, ref);
                                              //         context.router.replace(
                                              //             const LandingRoute());
                                              //
                                              //         // ref.invalidate(kotaIdProvider);
                                              //         // ref.invalidate(kotaNameProvider);
                                              //         // ref.invalidate(tagsIdProvider);
                                              //         // ref.invalidate(tagsNameProvider);
                                              //       }
                                              //     :
                                              () {
                                            /// FIXME ga tau kenapa disini ada pesan error
                                            ref
                                                .read(tagsIconLinkProvider
                                                    .notifier)
                                                .state = content
                                                    .petaKota?.kotaIcon2
                                                    ?.replaceAll(" ", "%20") ??
                                                "";

                                            print(
                                                "Link Kota 2: ${content.petaKota?.kotaIcon2?.replaceAll(" ", "%20")}");
                                            setContentListParams(
                                              ref,
                                              // tipe: content.tipe ?? "",
                                              kotaId: content.kotaId ?? 0,
                                              resetTipe: true,
                                            );
                                            ref
                                                .read(kotaNameProvider.notifier)
                                                .state = content.kotaName ?? "";
                                            // ref.invalidate(tagsIdProvider);
                                            ref.invalidate(tagsNameProvider);
                                            context.router
                                                .replace(const GreenRoute());
                                          },
                                          child:
                                              // isGreenMode
                                              //     ? SizedBox(
                                              //         height: huge,
                                              //
                                              //         /// ngasih FittedBox di dalam parent yg ga kasih constraint bakal eror (Row, Column, dll)
                                              //         child: InkWell(
                                              //           onTap: () {
                                              //             context.router.replace(
                                              //                 routeChooser(
                                              //                     content.tipe ??
                                              //                         ""));
                                              //           },
                                              //           child: IconWidget(
                                              //             menuIconNameChooser(
                                              //                 content.tipe ?? "",
                                              //                 isGreenMode:
                                              //                     isGreenMode),
                                              //             // isOnlineSource: true,
                                              //           ),
                                              //         ))
                                              //     :
                                              Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              /// TODO handle about the right icon for the right city
                                              SizedBox(
                                                height: mapIconHeightFromFigma,
                                                child: Image.network(
                                                  // 'assets/icons/icon_daerah/${content.kotaName?.toLowerCase().replaceAll(" ", "_")}_4.png',
                                                  content.petaKota?.kotaIcon4
                                                          ?.replaceAll(
                                                              " ", "%20") ??
                                                      "",
                                                  // isOnlineSource: true,
                                                  errorBuilder: (bc, o, st) =>
                                                      FittedBox(
                                                    child: Column(
                                                      children: [
                                                        const Icon(
                                                          Icons.location_city,
                                                          color: Color(
                                                              primaryColor),
                                                        ),
                                                        Text(
                                                          content.kotaName ??
                                                              "",
                                                          style: const TextStyle(
                                                              color: Color(
                                                                  primaryColor)),
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
                                      Expanded(
                                        child: SizedBox(
                                          height: tagsIconHeightFromFigma,

                                          /// sebelumnya ada error disini karena row di bungkus dengan fitted box, jangan pakai begitu lagi
                                          child: FittedBox(
                                            child: Row(
                                              children: [
                                                JustTheTooltip(
                                                  tailBaseWidth: 0,
                                                  tailLength: 0,
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.zero,
                                                  content: Text(content
                                                          .tagsPihak
                                                          ?.tagsName ??
                                                      ""),
                                                  child: IconWidget(
                                                    content.tagsPihak
                                                            ?.tagsIcon1 ??
                                                        "",
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: small),
                                                    isOnlineSource: true,
                                                    onTap: () {
                                                      setContentListParams(ref,
                                                          tipe: content.tipe ??
                                                              "",
                                                          tagsId: content
                                                                  .tagsPihak
                                                                  ?.tagsId ??
                                                              0);
                                                      ref
                                                          .read(tagsNameProvider
                                                              .notifier)
                                                          .state = content
                                                              .tagsPihak
                                                              ?.tagsName ??
                                                          "";
                                                      ref
                                                          .read(
                                                              tagsIconLinkProvider
                                                                  .notifier)
                                                          .state = content
                                                              .tagsPihak
                                                              ?.tagsIcon1 ??
                                                          "";
                                                      // ref.invalidate(
                                                      //     kotaIdProvider);
                                                      ref.invalidate(
                                                          kotaNameProvider);
                                                      context.router.replace(
                                                          routeChooser(
                                                              content.tipe ??
                                                                  ""));
                                                    },
                                                  ),
                                                ),
                                                JustTheTooltip(
                                                  tailBaseWidth: 0,
                                                  tailLength: 0,
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.zero,
                                                  content: Text(content
                                                          .tagsTopik
                                                          ?.tagsName ??
                                                      ""),
                                                  child: IconWidget(
                                                    content.tagsTopik
                                                            ?.tagsIcon1 ??
                                                        "",
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: small),
                                                    isOnlineSource: true,
                                                    onTap: () {
                                                      setContentListParams(ref,
                                                          tipe: content.tipe ??
                                                              "",
                                                          tagsId: content
                                                                  .tagsTopik
                                                                  ?.tagsId ??
                                                              0);
                                                      ref
                                                          .read(tagsNameProvider
                                                              .notifier)
                                                          .state = content
                                                              .tagsTopik
                                                              ?.tagsName ??
                                                          "";
                                                      ref
                                                          .read(
                                                              tagsIconLinkProvider
                                                                  .notifier)
                                                          .state = content
                                                              .tagsTopik
                                                              ?.tagsIcon1 ??
                                                          "";
                                                      // ref.invalidate(
                                                      //     kotaIdProvider);
                                                      ref.invalidate(
                                                          kotaNameProvider);
                                                      context.router.replace(
                                                          routeChooser(
                                                              content.tipe ??
                                                                  ""));
                                                    },
                                                  ),
                                                ),
                                                JustTheTooltip(
                                                  tailBaseWidth: 0,
                                                  tailLength: 0,
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.zero,
                                                  content: Text(content
                                                          .tagsOtonomi
                                                          ?.tagsName ??
                                                      ""),
                                                  child: IconWidget(
                                                    content.tagsOtonomi
                                                            ?.tagsIcon1 ??
                                                        "",
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: small),
                                                    isOnlineSource: true,
                                                    onTap: () {
                                                      setContentListParams(ref,
                                                          tipe: content.tipe ??
                                                              "",
                                                          tagsId: content
                                                                  .tagsOtonomi
                                                                  ?.tagsId ??
                                                              0);
                                                      ref
                                                          .read(tagsNameProvider
                                                              .notifier)
                                                          .state = content
                                                              .tagsOtonomi
                                                              ?.tagsName ??
                                                          "";
                                                      ref
                                                          .read(
                                                              tagsIconLinkProvider
                                                                  .notifier)
                                                          .state = content
                                                              .tagsOtonomi
                                                              ?.tagsIcon1 ??
                                                          "";
                                                      // ref.invalidate(
                                                      //     kotaIdProvider);
                                                      ref.invalidate(
                                                          kotaNameProvider);
                                                      context.router.replace(
                                                          routeChooser(
                                                              content.tipe ??
                                                                  ""));
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(medium),
                                  child: Column(
                                    children: [
                                      Text(
                                        '${content.sourceName ?? ""} 26/05/2023, 12:00 WIB',
                                        style:
                                            // isGreenMode
                                            //     ? Theme.of(context)
                                            //         .textTheme
                                            //         .bodySmall
                                            //         ?.copyWith(
                                            //             color: const Color(
                                            //                 greenModeColor))
                                            //     :
                                            Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          ref
                                              .read(selectedContentIdProvider
                                                  .notifier)
                                              .state = content.id ?? 0;
                                          ref
                                              .read(contentsProvider.notifier)
                                              .markContentAsRed(
                                                  content.slug ?? "");
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              top: normal, bottom: medium),
                                          child: Text(
                                            '${content.judul}',
                                            style:
                                                // isGreenMode
                                                //     ? Theme.of(context)
                                                //         .textTheme
                                                //         .headlineSmall
                                                //         ?.copyWith(
                                                //             color: const Color(
                                                //                 greenModeColor))
                                                //     :
                                                Theme.of(context)
                                                    .textTheme
                                                    .headlineSmall,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        constraints:
                                            contentId == (content.id ?? -1)
                                                ? null
                                                : const BoxConstraints(
                                                    maxHeight: 200),
                                        child: SingleChildScrollView(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          child: HtmlWidget(
                                            "${content.keterangan}",
                                            textStyle: const TextStyle(
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(medium),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconWidget(
                                        iconDibaca,
                                        size: huge,
                                      ),
                                      FittedBox(
                                          child: Text(
                                              "${content.totalRead ?? "0"} Reads")),
                                      InkWell(
                                        onTap: isLiked
                                            ? null
                                            : () {
                                                ref
                                                    .read(contentsProvider
                                                        .notifier)
                                                    .likeContent(content);
                                                // myToast("the slug: ${content.slug}");
                                              },
                                        child: isLiked
                                            ? Icon(
                                                Icons.thumb_up,
                                                color: Color(primaryColor),
                                              )
                                            : IconWidget(
                                                iconSuka,
                                                size: huge,
                                              ),
                                      ),
                                      FittedBox(
                                          child: Text(
                                              "${content.totalLike ?? "0"} Likes")),
                                      InkWell(
                                        onTap: contentId != content.id
                                            ? () {
                                                ref
                                                    .read(
                                                        selectedContentSlugProvider
                                                            .notifier)
                                                    .state = content.slug ?? "";
                                                ref
                                                    .read(commentsProvider
                                                        .notifier)
                                                    .fetchCommentFromAPI();

                                                // ref
                                                //     .read(contentsProvider.notifier)
                                                //     .markContentAsRed(content.slug ?? "");
                                              }
                                            : null,
                                        child: IconWidget(
                                          iconCommments,
                                          size: huge,
                                        ),
                                      ),
                                      FittedBox(
                                        child: Text(
                                            "${content.totalComment ?? "0"} Comments"),
                                      ),
                                      IconWidget(
                                        iconTeruskan,
                                        size: huge,
                                        onTap: () {
                                          Share.share(
                                              'Neraca Ruang at: https://neracaruang.com/${content.tipe ?? ""}/${content.slug}');
                                        },
                                      ),
                                    ]
                                        .map((e) => Expanded(
                                              child: e,
                                            ))
                                        .toList(),
                                  ),
                                ),
                                Visibility(
                                    visible: selectedSlug.isNotEmpty &&
                                        selectedSlug == content.slug,
                                    child: CommentWidget()),
                              ],
                            );
                          }),
                      ButtonLoadMore(),
                      SocialMediaPanelWidget(),
                    ],
                  ),
                ),
              );
            }, error: (o, st) {
              return Center(child: const Text("Keyword Not Found"));
            }, loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: Color(primaryColor),
                ),
              );
            }),
          ),
        ),
      ),
    );

    // Scaffold(
    //   appBar: AppBar(
    //     title: Text("Halaman Filtered List"),
    //   ),
    //   body: Container(
    //     child: Center(
    //       child: list.when(
    //           data: (data) => Text("The Dummy:\n${list}"),
    //           error: (e, s) {
    //             return Column(
    //               children: [
    //                 IconWidget(iconError),
    //                 Text("Error: ${e}"),
    //                 Text("Error Message: ${s.toString()}")
    //               ],
    //             );
    //           },
    //           loading: () => CircularProgressIndicator()),
    //     ),
    //   ));
  }
}
