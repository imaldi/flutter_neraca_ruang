import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/consts/num_consts.dart';
import 'package:flutter_neraca_ruang/core/helper_functions/basic_will_pop_scope.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/data/models/adsense_response/adsense_response.dart';
import 'package:flutter_neraca_ruang/data/models/diskusi_response/diskusi_response.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/active_forum_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/appbar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/bottom_bar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/main_drawer.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../logic/state_management/riverpod/all_content_list_providers.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import '../widgets/drawer_content.dart';
import '../widgets/scrollable_horizontal_image.dart';
import '../widgets/social_media_panel_widget.dart';
import '../widgets/tab_menu_item.dart';

@RoutePage()
class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends ConsumerState<LandingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dataDashboard = ref.watch(dashBoardProvider);
    var adsense = ref.watch(adsenseProvider);
    var authData = ref.watch(authStatusProvider);
    var isLogin = authData.value != null;
    var forumList = ref.watch(activeForumsProvider);

    return DefaultTabController(
      length: mainTabLength,
      child: Scaffold(
        appBar: appBarWidget(
          context,
          ref: ref,
        ),
        drawer: MainDrawer(),
        body:

            /// Testing state persistence from Hive
            // Center(child: Text("${userData.toJson()}")),

            /// Ini dashboard
            Center(
                child: dataDashboard.when(
                    data: (data) {
                      if (data.every((element) => element.id == null)) {
                        return Center(
                            child: Text("Tidak ada konten ditemukan"));
                      }
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            /// 1. Kabar
                            Visibility(
                              visible:
                                  data.first.id != null || data.first.id != 0,
                              child: Column(
                                children: [
                                  Container(
                                    // margin: const EdgeInsets.only(bottom: normal),
                                    constraints: BoxConstraints(
                                      maxHeight: 200,
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                    ),
                                    child: Image.network(
                                      "https://$contentUrl/${data.first.images}",
                                      fit: BoxFit.cover,
                                      errorBuilder: (bc, o, st) {
                                        return Text(data.first.images ?? "");
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(normal),
                                    child: InkWell(
                                      onTap: () {
                                        // merubah kota Id (untuk apa lupa)
                                        ref
                                            .read(kotaIdProvider.notifier)
                                            .state = data[0].kotaId ?? 0;
                                        // merubah content id (untuk melihat komentar)
                                        ref
                                            .read(selectedContentIdProvider
                                                .notifier)
                                            .state = data[0].id ?? 0;
                                        // untuk melihat komentar
                                        ref
                                            .read(selectedContentSlugProvider
                                                .notifier)
                                            .state = data[0].slug ?? "";

                                        ref
                                            .read(kotaNameProvider.notifier)
                                            .state = data[0].kotaName ?? "";

                                        ref
                                            .read(contentsProvider.notifier)
                                            .markContentAsRed(
                                                data[0].slug ?? "");

                                        ref
                                            .read(tipeKontenProvider.notifier)
                                            .state = "kabar";

                                        context.router
                                            .replace(const KabarRoute());
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: normal),
                                              constraints: const BoxConstraints(
                                                  maxWidth: extra,
                                                  maxHeight: extra),
                                              child: Image.asset(iconKabar)),
                                          Text(
                                            // TODO fix formatting tanggal
                                            '${data.first.sourceName ?? ""}, ${data.first.sourceDate ?? ""}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: medium),
                                            child: Text(
                                              '${data.first.judul ?? "Kabar"}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Container(
                                              height: 200,
                                              child: SingleChildScrollView(
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  child: HtmlWidget(
                                                    "${data.first.keterangan}",
                                                    textStyle: TextStyle(
                                                        color: Colors.grey),
                                                  ))),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                ],
                              ),
                            ),
                            Visibility(
                                visible: data[1].id != null || data[1].id != 0,
                                child: Column(
                                  children: [
                                    Container(
                                      // margin: const EdgeInsets.symmetric(vertical: normal),
                                      constraints: BoxConstraints(
                                        maxHeight: 200,
                                        minWidth:
                                            MediaQuery.of(context).size.width,
                                      ),
                                      child: Image.network(
                                        "https://$contentUrl/${data[1].images}",
                                        fit: BoxFit.cover,
                                        errorBuilder: (bc, o, st) {
                                          return Text(data[1].images ?? "");
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(normal),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              ref
                                                  .read(kotaIdProvider.notifier)
                                                  .state = data[1].kotaId ?? 0;
                                              ref
                                                      .read(kotaNameProvider
                                                          .notifier)
                                                      .state =
                                                  data[1].kotaName ?? "";
                                              ref
                                                  .read(
                                                      selectedContentIdProvider
                                                          .notifier)
                                                  .state = data[1].id ?? 0;

                                              ref
                                                  .read(
                                                      selectedContentSlugProvider
                                                          .notifier)
                                                  .state = data[1].slug ?? "";

                                              ref
                                                  .read(tipeKontenProvider
                                                      .notifier)
                                                  .state = "jurnal";

                                              context.router
                                                  .replace(const JurnalRoute());
                                            },
                                            child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: normal),
                                                constraints:
                                                    const BoxConstraints(
                                                        maxWidth: extra,
                                                        maxHeight: extra),
                                                child: Image.asset(iconJurnal)),
                                          ),
                                          IntrinsicHeight(
                                            child: Text(
                                              // TODO fix formatting tanggal
                                              '${data[1].sourceName ?? ""}, ${data[1].sourceDate ?? ""}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: medium),
                                            child: Text(
                                              "${data[1].judul ?? "Jurnal"}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Container(
                                            constraints: const BoxConstraints(
                                                maxHeight: 200),
                                            child: SingleChildScrollView(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              child: HtmlWidget(
                                                "${data[1].keterangan}",
                                                textStyle: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                )),
                            Visibility(
                                visible: data[2].id != null || data[2].id != 0,
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.only(top: medium),
                                      constraints: BoxConstraints(
                                        maxHeight: 200,
                                        minWidth:
                                            MediaQuery.of(context).size.width,
                                      ),
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              data[2].listMedia?.length ?? 0,
                                          itemBuilder: (c, i) {
                                            return SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: data[2]
                                                            .listMedia?[i]
                                                            .images !=
                                                        null
                                                    ? FittedBox(
                                                        fit: BoxFit.fitHeight,
                                                        child: Image.network(
                                                          data[2]
                                                                  .listMedia?[i]
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
                                          }),
                                      // Image.network(
                                      //   "https://$contentUrl/${data[2].images}",
                                      //   fit: BoxFit.cover,
                                      //   errorBuilder: (bc, o, st) {
                                      //     return IntrinsicHeight(
                                      //       child: const Column(
                                      //         children: [
                                      //           IconWidget(iconError),
                                      //           Text("Image Not Found"),
                                      //         ],
                                      //       ),
                                      //     );
                                      //     // Text(data[2].images ?? "");
                                      //   },
                                      // ),
                                    ),
                                    // const ScrollableHorizontalImage(),
                                    Padding(
                                      padding: const EdgeInsets.all(normal),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              ref
                                                  .read(kotaIdProvider.notifier)
                                                  .state = data[2].kotaId ?? 0;
                                              ref
                                                      .read(kotaNameProvider
                                                          .notifier)
                                                      .state =
                                                  data[2].kotaName ?? "";

                                              ref
                                                  .read(
                                                      selectedContentIdProvider
                                                          .notifier)
                                                  .state = data[2].id ?? 0;

                                              ref
                                                  .read(
                                                      contentsProvider.notifier)
                                                  .markContentAsRed(
                                                      data[2].slug ?? "");
                                              ref
                                                  .read(tipeKontenProvider
                                                      .notifier)
                                                  .state = "infografis";

                                              context.router.replace(
                                                  const InfografisRoute());
                                            },
                                            child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: normal),
                                                constraints:
                                                    const BoxConstraints(
                                                        maxWidth: extra,
                                                        maxHeight: extra),
                                                child: Image.asset(
                                                    iconInfografis)),
                                          ),
                                          IntrinsicHeight(
                                            child: Text(
                                              // TODO fix formatting tanggal
                                              '${data[2].sourceName ?? ""}, ${data[2].sourceDate ?? ""}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: medium),
                                            child: Text(
                                              "${data[2].judul ?? "Infografis"}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Text("${data[2].keterangan}",
                                              style: TextStyle(
                                                  color: Colors.black),
                                              maxLines: 7,
                                              overflow: TextOverflow.ellipsis),
                                        ],
                                      ),
                                    ),
                                    // Image.asset("assets/images/neraca_ruang.png"),
                                    Divider(),
                                  ],
                                )),
                            Visibility(
                                visible: data[3].id != null || data[3].id != 0,
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.only(top: medium),
                                      constraints: BoxConstraints(
                                        maxHeight: 200,
                                        minWidth:
                                            MediaQuery.of(context).size.width,
                                      ),
                                      child: YoutubePlayer(
                                        controller: YoutubePlayerController(
                                            initialVideoId:
                                                YoutubePlayer.convertUrlToId(
                                                        data[3].videoUrl ??
                                                            "") ??
                                                    "",
                                            flags: const YoutubePlayerFlags(
                                                autoPlay: false)),
                                        showVideoProgressIndicator: true,
                                      ),

                                      // Text("URL YOUTUBE: ${data[3].videoUrl}"),
                                      // Image.network(
                                      //   "https://$thumbnailUrl/${data[3].thumbnail}",
                                      //   fit: BoxFit.cover,
                                      //   errorBuilder: (bc, o, st) {
                                      //     return Text(data[3].thumbnail ?? "");
                                      //   },
                                      // ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(normal),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              ref
                                                  .read(kotaIdProvider.notifier)
                                                  .state = data[3].kotaId ?? 0;
                                              ref
                                                      .read(kotaNameProvider
                                                          .notifier)
                                                      .state =
                                                  data[3].kotaName ?? "";

                                              ref
                                                  .read(
                                                      selectedContentIdProvider
                                                          .notifier)
                                                  .state = data[3].id ?? 0;

                                              ref
                                                  .read(
                                                      contentsProvider.notifier)
                                                  .markContentAsRed(
                                                      data[3].slug ?? "");
                                              ref
                                                  .read(tipeKontenProvider
                                                      .notifier)
                                                  .state = "video";

                                              context.router
                                                  .replace(const VideoRoute());
                                            },
                                            child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: normal),
                                                constraints:
                                                    const BoxConstraints(
                                                        maxWidth: extra,
                                                        maxHeight: extra),
                                                child: Image.asset(iconVideo)),
                                          ),
                                          Text(
                                            // TODO fix formatting tanggal
                                            '${data[3].sourceName ?? ""}, ${data[3].sourceDate ?? ""}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: medium),
                                            child: Text(
                                              "${data[3].judul ?? "Video"}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Text("${data[3].keterangan}",
                                              maxLines: 7,
                                              overflow: TextOverflow.ellipsis),
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                )),
                            Visibility(
                                visible: data[4].id != null || data[4].id != 0,
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.only(top: medium),
                                      constraints: BoxConstraints(
                                        maxHeight: 200,
                                        minWidth:
                                            MediaQuery.of(context).size.width,
                                      ),
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              data[4].listMedia?.length ?? 0,
                                          itemBuilder: (c, i) {
                                            return SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: data[4]
                                                            .listMedia?[i]
                                                            .images !=
                                                        null
                                                    ? FittedBox(
                                                        fit: BoxFit.fitHeight,
                                                        child: Image.network(
                                                          data[4]
                                                                  .listMedia?[i]
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
                                          }),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(normal),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              ref
                                                  .read(kotaIdProvider.notifier)
                                                  .state = data[4].kotaId ?? 0;
                                              ref
                                                      .read(kotaNameProvider
                                                          .notifier)
                                                      .state =
                                                  data[4].kotaName ?? "";
                                              ref
                                                  .read(
                                                      selectedContentIdProvider
                                                          .notifier)
                                                  .state = data[4].id ?? 0;
                                              ref
                                                  .read(
                                                      contentsProvider.notifier)
                                                  .markContentAsRed(
                                                      data[4].slug ?? "");
                                              ref
                                                  .read(tipeKontenProvider
                                                      .notifier)
                                                  .state = "foto";

                                              context.router.replace(
                                                  const AlbumFotoRoute());
                                            },
                                            child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: normal),
                                                constraints:
                                                    const BoxConstraints(
                                                        maxWidth: extra,
                                                        maxHeight: extra),
                                                child: Image.asset(iconFoto)),
                                          ),
                                          Text(
                                            // TODO fix formatting tanggal
                                            '${data[4].sourceName ?? ""}, ${data[4].sourceDate ?? ""}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: normal),
                                            child: Text(
                                              "${data[4].judul ?? "Foto"}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                )),

                            /// Diskusi section, hide dulu untuk sekarang
                            forumList.when(
                                data: (data) {
                                  var theData = data.length > 0
                                      ? data.first
                                      : DiskusiModel();
                                  return Visibility(
                                    visible: data.length > 0,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: medium),
                                      child: Column(
                                        children: [
                                          Container(
                                            // margin: const EdgeInsets.only(bottom: normal),
                                            constraints: BoxConstraints(
                                              maxHeight: 200,
                                              minWidth: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                            ),
                                            child: Image.network(
                                              "${data.length > 0 ? theData.threadThumbnail : ""}",
                                              fit: BoxFit.cover,
                                              errorBuilder: (bc, o, st) {
                                                return Center(
                                                    child: Text(
                                                        "Image Not Found"));
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: normal,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              context.router.replace(
                                                  const DiskusiRoute());
                                            },
                                            child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: normal),
                                                constraints:
                                                    const BoxConstraints(
                                                        maxWidth: extra,
                                                        maxHeight: extra),
                                                child: Image.asset(iconForum)),
                                          ),
                                          SizedBox(
                                            height: normal,
                                          ),
                                          Text(
                                            // TODO fix formatting tanggal
                                            '${theData.createdAt ?? ""}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          Text(
                                            theData.threadSubject ?? "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall,
                                            textAlign: TextAlign.center,
                                          ),
                                          Text(theData.threadDescription ?? ""),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                error: (o, st) =>
                                    Center(child: Text("There is an error")),
                                loading: () => Center(
                                        child: CircularProgressIndicator(
                                      color: Color(primaryColor),
                                    ))),

                            SocialMediaPanelWidget(),
                            SizedBox(
                              height: 3 * huge,
                            ),

                            Text(
                              "Ads",
                              style: Theme.of(context).textTheme.headlineSmall,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: normal,
                            ),
                            adsense.when(data: (data) {
                              // return Text("Ads Banner: ${data.banner}");
                              return ScrollableHorizontalImage(
                                [
                                  IconWidget(
                                    data.banner ?? "",
                                    isOnlineSource: true,
                                    // size: 250,
                                    customOnErrorWidget: Container(
                                      height: extra,
                                      color: Color(primaryColor),
                                      child: Text("No Ads"),
                                    ),
                                  )
                                ],
                                removeArrows: true,
                                // height: extra,
                                fit: BoxFit.fitWidth,
                              );

                              // Text("Ada Data: ${data.toString()}");
                            }, error: (o, st) {
                              return Text("Ada Error");
                            }, loading: () {
                              return const CircularProgressIndicator(
                                color: Color(primaryColor),
                              );
                            })
                          ],
                        ),
                      );
                    },
                    error: (e, s) {
                      const Text("Error Bruh");
                    },
                    loading: () => const UnconstrainedBox(
                            child: Center(
                                child: CircularProgressIndicator(
                          color: Color(primaryColor),
                        ))))),

        bottomNavigationBar:
            const BottomBarWidget(), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
