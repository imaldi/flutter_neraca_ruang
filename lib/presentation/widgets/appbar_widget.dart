import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/sizes.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/tab_menu_item.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/colors.dart';
import '../../core/router/app_router.dart';
import 'bottom_bar_widget.dart';

appBarWidget(BuildContext context,
    {String? appbarTitle, Widget? appbarBackgroundImage}) {
  final TabBar _tabBar = TabBar(
    isScrollable: true,
    indicatorColor: Colors.transparent,
    tabs: [
      InkWell(
          onTap: () {
            context.router.replace(const KabarRoute());
          },
          child: TabMenuItem("KABAR")),
      InkWell(
          onTap: () {
            context.router.replace(const JurnalRoute());
          },
          child: TabMenuItem("JURNAL")),
      InkWell(
          onTap: () {
            context.router.replace(const InfografisRoute());
          },
          child: TabMenuItem("INFOGRAFIS")),
      InkWell(
          onTap: () {
            context.router.replace(const VideoRoute());
          },
          child: TabMenuItem("VIDEO")),
      InkWell(
          onTap: () {
            context.router.replace(const AlbumFotoRoute());
          },
          child: TabMenuItem("ALBUM FOTO")),
      TabMenuItem("DISKUSI"),
    ],
  );
  return AppBar(
    elevation: 0,
    leading: appbarTitle != null && appbarTitle.isNotEmpty
        ? IconWidget(
            iconNR,
            size: huge,
          )
        : null,
    title: appbarTitle != null && appbarTitle.isNotEmpty
        ? Center(
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
            child: Center(
                child: Image.asset("assets/images/nr_logo_horizontal.png"))),
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
      child: ColoredBox(color: const Color(primaryColor), child: _tabBar),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.search),
      )
    ],
  );
}
