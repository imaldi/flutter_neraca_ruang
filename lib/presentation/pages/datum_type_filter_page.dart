import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/consts/num_consts.dart';
import 'package:flutter_neraca_ruang/core/helper_functions/menu_icon_name_chooser.dart';
import 'package:flutter_neraca_ruang/logic/state_management/cubit_bloc/dashboard/dashboard_cubit.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../core/router/app_router.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/drawer_content.dart';

@RoutePage()
class DatumTypeFilterPage extends StatefulWidget implements AutoRouteWrapper {
  const DatumTypeFilterPage({Key? key}) : super(key: key);

  @override
  _DatumTypeFilterPageState createState() => _DatumTypeFilterPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    // TODO: implement wrappedRoute
    return BlocProvider<DashboardCubit>(
        create: (bc) => DashboardCubit(), child: this);
  }
}

class _DatumTypeFilterPageState extends State<DatumTypeFilterPage> {
  @override
  void initState() {
    super.initState();
    context.read<DashboardCubit>().fetchDashboardContent();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mainTabLength,
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
                    child:
                        // isLogin
                        //     ? InkWell(
                        //         onTap: () async {
                        //           ref
                        //               .read(isLoginProvider.notifier)
                        //               .update((state) => false);
                        //           var box = sl<Box<LoginResponse>>();
                        //           await box.delete(userDataKey);
                        //           context.router.replace(const LoginRoute());
                        //         },
                        //         child: const Text("Log Out"))
                        //     :
                        InkWell(
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
        body: BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
          var theContentList = state.listContentDashboard ?? <Datum>[];
          var contentTypeList = theContentList.map((e) => e.tipe);
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: theContentList.length,
                    itemBuilder: (c, i) {
                      var data = theContentList[i];
                      return Column(
                        children: [
                          Container(
                            color: Colors.grey[100],
                            // margin: const EdgeInsets.only(bottom: normal),
                            constraints: BoxConstraints(
                              maxHeight: 200,
                              minWidth: MediaQuery.of(context).size.width,
                            ),
                            child: data.tipe == "infografis"
                                ? Container(
                                    margin: const EdgeInsets.only(top: medium),
                                    constraints: BoxConstraints(
                                      maxHeight: 200,
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                    ),
                                    child: data.listMedia == null
                                        ? const Center(
                                            child: IntrinsicHeight(
                                                child: Column(
                                            children: [
                                              IconWidget(iconError),
                                              Text(
                                                "Infografis Slider",
                                                style: TextStyle(
                                                    color: Color(primaryColor)),
                                              )
                                            ],
                                          )))
                                        : ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount:
                                                data.listMedia?.length ?? 0,
                                            itemBuilder: (c, i) {
                                              return SizedBox(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: data.listMedia?[i]
                                                              .images !=
                                                          null
                                                      ? FittedBox(
                                                          fit: BoxFit.fitHeight,
                                                          child: Image.network(
                                                            data.listMedia?[i]
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
                                  )
                                // const Text("Image scroll infografis")
                                : data.tipe == "video"
                                    ? const Center(
                                        child: IntrinsicHeight(
                                            child: Column(
                                        children: [
                                          IconWidget(iconError),
                                          Text(
                                            "Video Player",
                                            style: TextStyle(
                                                color: Color(primaryColor)),
                                          )
                                        ],
                                      )))
                                    // const Text("Video Player")
                                    : data.images == null
                                        ? const Center(
                                            child: IntrinsicHeight(
                                                child: Column(
                                            children: [
                                              IconWidget(iconError),
                                              Text(
                                                "Image Not Found",
                                                style: TextStyle(
                                                    color: Color(primaryColor)),
                                              )
                                            ],
                                          )))
                                        : Image.network(
                                            "https://$contentUrl/${data.images ?? data.thumbnail}",
                                            fit: BoxFit.cover,
                                            errorBuilder: (bc, o, st) {
                                              return Text(data.images ?? "");
                                            },
                                          ),
                          ),
                          // Text(data.tipe ?? ""),
                          Padding(
                            padding: const EdgeInsets.all(normal),
                            child: InkWell(
                              onTap: () {
                                // ref.read(kotaIdProvider.notifier).state =
                                //     data[0].kotaId ?? 0;
                                // ref.read(selectedContentIdProvider.notifier).state =
                                //     data[0].id ?? 0;
                                // ref.read(kotaNameProvider.notifier).state =
                                //     data[0].kotaName ?? "";

                                context.router.replace(const KabarRoute());
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: normal),
                                      constraints: const BoxConstraints(
                                          maxWidth: extra, maxHeight: extra),
                                      child: Image.asset(menuIconNameChooser(
                                          data.tipe ?? ""))),
                                  Text(
                                    // TODO fix formatting tanggal
                                    '${data.sourceName ?? ""} 26/05/2023, 12:00 WIB',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: medium),
                                    child: Text(
                                      '${data.judul}',
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
                                              "${data.keterangan}"))),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                        ],
                      );
                    }

                    // Card(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(normal),
                    //     child: Text("${theContentList[i].tipe}"),
                    //   ),
                    // )
                    ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: extra),
                  child: Column(
                    children: [
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
                                  ?.copyWith(
                                      decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
        bottomNavigationBar: const BottomBarWidget(),
      ),
    );
  }
}
