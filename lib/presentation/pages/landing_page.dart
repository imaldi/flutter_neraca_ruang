import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/appbar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/bottom_bar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
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
  Widget build(BuildContext context) {
    var dataDashboard = ref.watch(dashBoardProvider);

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: appBarWidget(context),
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
                const DrawerContent(),
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
                  child: const Text("Masuk / Daftar"),
                ),
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

            // fotoTerbaru.when(
            //     data: (foto) {
            //       return Text(foto.toJson().toString());
            //     },
            //     error: (err, stack) {
            //       return Text("Ada Error: ${err.toString()}");
            //     },
            //     loading: () => const CircularProgressIndicator()),

            /// Ini dashboard
            SingleChildScrollView(
          child: Center(
              child: dataDashboard.when(
                  data: (data) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: normal),
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
                          padding: const EdgeInsets.all(medium),
                          child: Column(
                            children: [
                              Container(
                                  constraints: const BoxConstraints(
                                      maxWidth: extra, maxHeight: extra),
                                  child: Image.asset(iconKabar)),
                              Text(
                                '${data.first.sourceName} 26/05/2023, 12:00 WIB',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Text(
                                '${data.first.judul}',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                textAlign: TextAlign.center,
                              ),
                              Text("${data.first.keterangan}",
                                  maxLines: 7, overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: normal),
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
                          padding: const EdgeInsets.all(medium),
                          child: Column(
                            children: [
                              Container(
                                  constraints: const BoxConstraints(
                                      maxWidth: extra, maxHeight: extra),
                                  child: Image.asset(iconJurnal)),
                              Text(
                                "${data[1].judul}",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "${data[1].keterangan}",
                                maxLines: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: normal),
                          constraints: BoxConstraints(
                            maxHeight: 200,
                            minWidth: MediaQuery.of(context).size.width,
                          ),
                          child: Image.network(
                            "https://$contentUrl/${data[2].images}",
                            fit: BoxFit.cover,
                            errorBuilder: (bc, o, st) {
                              return Text(data[2].images ?? "");
                            },
                          ),
                        ),
                        // const ScrollableHorizontalImage(),
                        Padding(
                          padding: const EdgeInsets.all(medium),
                          child: Column(
                            children: [
                              Container(
                                  constraints: const BoxConstraints(
                                      maxWidth: extra, maxHeight: extra),
                                  child: Image.asset(iconInfografisSementara)),
                              Text(
                                "${data[2].judul}",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                textAlign: TextAlign.center,
                              ),
                              Text("${data[2].keterangan}",
                                  maxLines: 7, overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ),
                        // Image.asset("assets/images/neraca_ruang.png"),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: normal),
                          constraints: BoxConstraints(
                            maxHeight: 200,
                            minWidth: MediaQuery.of(context).size.width,
                          ),
                          child: Image.network(
                            "https://$thumbnailUrl/${data[3].thumbnail}",
                            fit: BoxFit.cover,
                            errorBuilder: (bc, o, st) {
                              return Text(data[3].thumbnail ?? "");
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(medium),
                          child: Column(
                            children: [
                              Container(
                                  constraints: const BoxConstraints(
                                      maxWidth: extra, maxHeight: extra),
                                  child: Image.asset(iconVideo)),
                              Text(
                                "${data[3].judul}",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                textAlign: TextAlign.center,
                              ),
                              Text("${data[3].keterangan}",
                                  maxLines: 7, overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: normal),
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
                          padding: const EdgeInsets.all(medium),
                          child: Column(
                            children: [
                              Container(
                                  constraints: const BoxConstraints(
                                      maxWidth: extra, maxHeight: extra),
                                  child: Image.asset(iconFoto)),
                              Text(
                                  "${data[4].sourceName ?? "Tidak ada Sumber"}, ${data[4].sourceDate ?? "Tidak ada tanggal Sumber"}"),
                              Text(
                                "${data[4].judul}",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: normal),
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
                          padding: const EdgeInsets.all(medium),
                          child: Column(
                            children: [
                              Container(
                                  constraints: const BoxConstraints(
                                      maxWidth: extra, maxHeight: extra),
                                  child: Image.asset(iconForum)),
                              Text(
                                "APAKAH INDONESIA SUDAH MENJALANKAN OTONOMI DAERAH DENGAN BAIK? (STATIS, BELUM DARI API)",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                  "Diskusi hangat mengenai pandangan masyarakat terhadap penerapan otonomi daerah di masa kini. (STATIS, BELUM DARI API)"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: extra,
                        ),
                        Text(
                          "IKUTI KAMI",
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      "assets/images/icon_facebook.png"),
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
                                    ?.copyWith(
                                        decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                        const ScrollableHorizontalImage(),
                      ],
                    );
                  },
                  error: (e, s) {
                    const Text("Error Bruh");
                  },
                  loading: () => const UnconstrainedBox(
                      child: Center(child: CircularProgressIndicator())))),
        ),

        bottomNavigationBar:
            const BottomBarWidget(), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
