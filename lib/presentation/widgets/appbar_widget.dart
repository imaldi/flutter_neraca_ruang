import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/sizes.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/tab_menu_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/colors.dart';
import '../../core/router/app_router.dart';
import 'bottom_bar_widget.dart';

appBarWidget(BuildContext context,
    {WidgetRef? ref,
    String? appbarTitle,
    Widget? appbarBackgroundImage,
    Function? resetStates,
    List<Widget>? tabsChild,
    bool isGreenMode = false}) {
  final TabBar _tabBar = TabBar(
    isScrollable: !isGreenMode,
    indicatorColor: Colors.transparent,
    tabs: tabsChild ??
        [
          InkWell(
              onTap: () {
                context.router.replace(const KabarRoute());
                if (resetStates != null) {
                  resetStates();
                }
              },
              child: TabMenuItem("KABAR")),
          InkWell(
              onTap: () {
                context.router.replace(const JurnalRoute());
                if (resetStates != null) {
                  resetStates();
                }
              },
              child: TabMenuItem("JURNAL")),
          InkWell(
              onTap: () {
                context.router.replace(const InfografisRoute());
                if (resetStates != null) {
                  resetStates();
                }
              },
              child: TabMenuItem("INFOGRAFIS")),
          InkWell(
              onTap: () {
                context.router.replace(const VideoRoute());
                if (resetStates != null) {
                  resetStates();
                }
              },
              child: TabMenuItem("VIDEO")),
          InkWell(
              onTap: () {
                context.router.replace(const AlbumFotoRoute());
                if (resetStates != null) {
                  resetStates();
                }
              },
              child: TabMenuItem("ALBUM FOTO")),
          TabMenuItem("DISKUSI"),
        ],
  );
  return AppBar(
    elevation: 0,
    leading: appbarTitle != null && appbarTitle.isNotEmpty
        ? Container(
            margin: const EdgeInsets.symmetric(horizontal: normal),
            child: InkWell(
              onTap: () {
                context.router.replace(const LandingRoute());
              },
              child: IconWidget(
                iconNR,
                size: huge,
              ),
            ),
          )
        : null,
    title: appbarTitle != null && appbarTitle.isNotEmpty
        ? isGreenMode
            ? appbarBackgroundImage
            : Center(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Text(
                      appbarTitle.toUpperCase(),
                      style: TextStyle(
                          color: Color(titleColorText),
                          fontWeight: FontWeight.bold),
                    ),
                    appbarBackgroundImage ?? Container(),
                  ],
                ),
              )
        : InkWell(
            onTap: () {
              context.router.replace(const LandingRoute());
            },
            child: Center(child: Image.asset(iconNRAppbar))),
    bottom:
        // isGreenMode
        // ? PreferredSize(
        //     preferredSize: _tabBar.preferredSize,
        //     child: ColoredBox(
        //         color: const Color(greenModeColor),
        //         child: TabBar(
        //           indicatorColor: Colors.transparent,
        //           padding: const EdgeInsets.symmetric(vertical: normal),
        //           tabs: [
        //             Image.asset("assets/images/kons.png"),
        //             Image.asset("assets/images/mada.png"),
        //             Image.asset("assets/images/oto.png"),
        //           ],
        //         )),
        //   )
        // :
        PreferredSize(
      preferredSize: _tabBar.preferredSize,
      child: ColoredBox(
          color: isGreenMode ? Colors.white : Color(primaryColor),
          child: _tabBar),
    ),
    actions: [
      InkWell(
        onTap: () async {
          var dialogController = TextEditingController();
          await showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  title: Text("Masukkan Keyword Pencarian"),
                  content: RoundedTextFormField(
                    controller: dialogController,
                    hint: "keyword pencarian",
                  ),
                  actions: [
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            ref
                                ?.read(contentsProvider.notifier)
                                .fetchTodo(keyword: dialogController.text);
                            context.router.push(const DatumTypeFilterRoute());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(primaryColor)),
                          child: IntrinsicWidth(
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                Text("Cari"),
                              ],
                            ),
                          )),
                    )
                  ],
                );
              });
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),
      )
    ],
  );
}
