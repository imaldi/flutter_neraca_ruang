import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/num_consts.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/appbar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/bottom_bar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hive/hive.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/hive_const.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../data/models/login_response_deprecated/login_response.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/auth_providers.dart';
import '../widgets/drawer_content.dart';
import '../widgets/scrollable_horizontal_image.dart';

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
    // ref.listen(loggingInProvider, (previous, next) {
    //   next.when(
    //       data: (data) {
    //         if (!data) {
    //           context.router.replace(const LoginRoute());
    //           print("login listener called in landing page");
    //         }
    //       },
    //       error: (o, st) => null,
    //       loading: () => null);
    // });
    ref.listen(isLoginProvider, (previous, next) {
      if (!next) {
        context.router.replace(const LoginRoute());
        print("login listener called in landing page");
      }
    });
    var dataDashboard = ref.watch(dashBoardProvider);
    var adsense = ref.watch(adsenseProvider);
    var isLogin = ref.watch(isLoginProvider);
    var userData = ref.watch(userDataProvider);

    return DefaultTabController(
      length: mainTabLength,
      child: Scaffold(
        appBar: appBarWidget(
          context,
          ref: ref,
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                    margin: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.none)),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.dehaze),
                      ],
                    )),
                DrawerContent(),
                const SizedBox(
                  height: 2 * extra,
                ),
                Container(
                    padding: const EdgeInsets.all(big),
                    margin: const EdgeInsets.symmetric(vertical: big),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(huge))),
                    child: isLogin
                        ? InkWell(
                            onTap: () async {
                              ref
                                  .read(isLoginProvider.notifier)
                                  .update((state) => false);
                              var box = sl<Box<LoginResponse>>();
                              await box.delete(userDataKey);
                              context.router.replace(const LoginRoute());
                            },
                            child: const Text("Log Out"))
                        : InkWell(
                            onTap: () {
                              context.router.push(const LoginRoute());
                            },
                            child: const Text("Masuk / Daftar"))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/icon_facebook.png"),
                          Image.asset("assets/images/icon_ig.png"),
                          Image.asset("assets/images/icon_twitter.png"),
                          Image.asset("assets/images/icon_tiktok.png"),
                          Image.asset("assets/images/icon_youtube.png"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "neracaruang@neracaruang.com",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Copyright © PT. Semesta Teknologi Indonesia",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body:

            /// Testing state persistence from Hive
            // Center(child: Text("${userData.toJson()}")),

            /// Ini dashboard
            Center(
                child: dataDashboard.when(
                    data: (data) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            /// 1. Kabar
                            Container(
                              // margin: const EdgeInsets.only(bottom: normal),
                              constraints: BoxConstraints(
                                maxHeight: 200,
                                minWidth: MediaQuery.of(context).size.width,
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
                                  ref.read(kotaIdProvider.notifier).state =
                                      data[0].kotaId ?? 0;
                                  ref
                                      .read(selectedContentIdProvider.notifier)
                                      .state = data[0].id ?? 0;
                                  ref.read(kotaNameProvider.notifier).state =
                                      data[0].kotaName ?? "";

                                  context.router.replace(const KabarRoute());
                                },
                                child: Column(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: normal),
                                        constraints: const BoxConstraints(
                                            maxWidth: extra, maxHeight: extra),
                                        child: Image.asset(iconKabar)),
                                    Text(
                                      // TODO fix formatting tanggal
                                      '${data.first.sourceName ?? ""} 26/05/2023, 12:00 WIB',
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: medium),
                                      child: Text(
                                        '${data.first.judul}',
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
                                                "${data.first.keterangan}"))),
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            Container(
                              // margin: const EdgeInsets.symmetric(vertical: normal),
                              constraints: BoxConstraints(
                                maxHeight: 200,
                                minWidth: MediaQuery.of(context).size.width,
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
                                      ref.read(kotaIdProvider.notifier).state =
                                          data[1].kotaId ?? 0;
                                      ref
                                          .read(kotaNameProvider.notifier)
                                          .state = data[1].kotaName ?? "";
                                      ref
                                          .read(selectedContentIdProvider
                                              .notifier)
                                          .state = data[1].id ?? 0;
                                      context.router
                                          .replace(const JurnalRoute());
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: normal),
                                        constraints: const BoxConstraints(
                                            maxWidth: extra, maxHeight: extra),
                                        child: Image.asset(iconJurnal)),
                                  ),
                                  IntrinsicHeight(
                                    child: Text(
                                      // TODO fix formatting tanggal
                                      '${data[1].sourceName ?? ""} 26/05/2023, 12:00 WIB',
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: medium),
                                    child: Text(
                                      "${data[1].judul}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    constraints:
                                        const BoxConstraints(maxHeight: 200),
                                    child: SingleChildScrollView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      child: HtmlWidget(
                                        "${data[1].keterangan}",
                                        textStyle:
                                            TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              margin: const EdgeInsets.only(top: medium),
                              constraints: BoxConstraints(
                                maxHeight: 200,
                                minWidth: MediaQuery.of(context).size.width,
                              ),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: data[2].listMedia?.length ?? 0,
                                  itemBuilder: (c, i) {
                                    return SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child:
                                            data[2].listMedia?[i].images != null
                                                ? FittedBox(
                                                    fit: BoxFit.fitHeight,
                                                    child: Image.network(
                                                      data[2]
                                                              .listMedia?[i]
                                                              .images ??
                                                          "",
                                                      errorBuilder: (c, o, s) {
                                                        return const IconWidget(
                                                            iconError);
                                                      },
                                                    ),
                                                  )
                                                : const IconWidget(iconError));
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
                                      ref.read(kotaIdProvider.notifier).state =
                                          data[2].kotaId ?? 0;
                                      ref
                                          .read(kotaNameProvider.notifier)
                                          .state = data[2].kotaName ?? "";
                                      ref
                                          .read(selectedContentIdProvider
                                              .notifier)
                                          .state = data[2].id ?? 0;
                                      context.router
                                          .replace(const InfografisRoute());
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: normal),
                                        constraints: const BoxConstraints(
                                            maxWidth: extra, maxHeight: extra),
                                        child: Image.asset(iconInfografis)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: medium),
                                    child: Text(
                                      "${data[2].judul}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Text("${data[2].keterangan}",
                                      style: TextStyle(color: Colors.black),
                                      maxLines: 7,
                                      overflow: TextOverflow.ellipsis),
                                ],
                              ),
                            ),
                            // Image.asset("assets/images/neraca_ruang.png"),
                            Divider(),
                            Container(
                              margin: const EdgeInsets.only(top: medium),
                              constraints: BoxConstraints(
                                maxHeight: 200,
                                minWidth: MediaQuery.of(context).size.width,
                              ),
                              child: YoutubePlayer(
                                controller: YoutubePlayerController(
                                    initialVideoId:
                                        YoutubePlayer.convertUrlToId(
                                                data[3].videoUrl ?? "") ??
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
                                      ref.read(kotaIdProvider.notifier).state =
                                          data[3].kotaId ?? 0;
                                      ref
                                          .read(kotaNameProvider.notifier)
                                          .state = data[3].kotaName ?? "";
                                      ref
                                          .read(selectedContentIdProvider
                                              .notifier)
                                          .state = data[3].id ?? 0;
                                      context.router
                                          .replace(const VideoRoute());
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: normal),
                                        constraints: const BoxConstraints(
                                            maxWidth: extra, maxHeight: extra),
                                        child: Image.asset(iconVideo)),
                                  ),
                                  Text(
                                    // TODO fix formatting tanggal
                                    '${data[3].sourceName ?? ""} 26/05/2023, 12:00 WIB',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: medium),
                                    child: Text(
                                      "${data[3].judul}",
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
                            Container(
                              margin: const EdgeInsets.only(top: medium),
                              constraints: BoxConstraints(
                                maxHeight: 200,
                                minWidth: MediaQuery.of(context).size.width,
                              ),
                              child: Image.network(
                                "https://$contentUrl/${data[4].images}" ?? "",
                                fit: BoxFit.cover,
                                errorBuilder: (bc, o, st) {
                                  return Text(data[4].images ?? "");
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(normal),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      ref.read(kotaIdProvider.notifier).state =
                                          data[4].kotaId ?? 0;
                                      ref
                                          .read(kotaNameProvider.notifier)
                                          .state = data[4].kotaName ?? "";
                                      ref
                                          .read(selectedContentIdProvider
                                              .notifier)
                                          .state = data[4].id ?? 0;
                                      context.router
                                          .replace(const AlbumFotoRoute());
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: normal),
                                        constraints: const BoxConstraints(
                                            maxWidth: extra, maxHeight: extra),
                                        child: Image.asset(iconFoto)),
                                  ),
                                  Text(
                                    // TODO fix formatting tanggal
                                    '${data[4].sourceName ?? ""} 26/05/2023, 12:00 WIB',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  IntrinsicHeight(
                                    child: Text(
                                        "${data[4].sourceName ?? ""}, ${data[4].sourceDate ?? ""}"),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: normal),
                                    child: Text(
                                      "${data[4].judul}",
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
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: normal),
                              constraints: BoxConstraints(
                                maxHeight: 200,
                                minWidth: MediaQuery.of(context).size.width,
                              ),
                              child: Image.network(
                                "https://$contentUrl/${data[4].images}" ?? "",
                                fit: BoxFit.cover,
                                errorBuilder: (bc, o, st) {
                                  return Text(data[4].images ?? "");
                                },
                              ),
                            ),

                            /// Diskusi section, hide dulu untuk sekarang
                            // Padding(
                            //   padding: const EdgeInsets.all(medium),
                            //   child: Column(
                            //     children: [
                            //       Container(
                            //           constraints: const BoxConstraints(
                            //               maxWidth: extra, maxHeight: extra),
                            //           child: Image.asset(iconForum)),
                            //       Text(
                            //         "APAKAH INDONESIA SUDAH MENJALANKAN OTONOMI DAERAH DENGAN BAIK? (STATIS, BELUM DARI API)",
                            //         style:
                            //             Theme.of(context).textTheme.headlineSmall,
                            //         textAlign: TextAlign.center,
                            //       ),
                            //       const Text(
                            //           "Diskusi hangat mengenai pandangan masyarakat terhadap penerapan otonomi daerah di masa kini. (STATIS, BELUM DARI API)"),
                            //     ],
                            //   ),
                            // ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: extra),
                              child: Column(
                                children: [
                                  Text(
                                    "IKUTI KAMI",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                    textAlign: TextAlign.center,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/images/icon_facebook.png"),
                                            Image.asset(
                                                "assets/images/icon_ig.png"),
                                            Image.asset(
                                                "assets/images/icon_twitter.png"),
                                            Image.asset(
                                                "assets/images/icon_tiktok.png"),
                                            Image.asset(
                                                "assets/images/icon_youtube.png"),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          "neracaruang@neracaruang.com",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                  decoration:
                                                      TextDecoration.underline),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // TODO implement adsense
                            Text(
                              "Ads",
                              style: Theme.of(context).textTheme.headlineSmall,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: normal,
                            ),
                            adsense.when(data: (data) {
                              return ScrollableHorizontalImage(data.map((e) {
                                return IconWidget(
                                  e.banner ?? "",
                                  isOnlineSource: true,
                                  size: 250,
                                );
                              }).toList());

                              // Text("Ada Data: ${data.toString()}");
                            }, error: (o, st) {
                              return Text("Ada Error");
                            }, loading: () {
                              return const CircularProgressIndicator();
                            })
                          ],
                        ),
                      );
                    },
                    error: (e, s) {
                      const Text("Error Bruh");
                    },
                    loading: () => const UnconstrainedBox(
                        child: Center(child: CircularProgressIndicator())))),

        bottomNavigationBar:
            const BottomBarWidget(), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
