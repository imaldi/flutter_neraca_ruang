import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/tab_menu_item.dart';

import '../../core/router/app_router.dart';

greenModeAppBarWidget(BuildContext context) {
  final TabBar _tabBar = TabBar(
    isScrollable: true,
    indicatorColor: Colors.transparent,
    tabs: [
      TabMenuItem("KABAR", "kabar"),
      TabMenuItem("JURNAL", "jurnal"),
      TabMenuItem("INFOGRAFIS", "infografis"),
      TabMenuItem("VIDEO", "video"),
      TabMenuItem("ALBUM FOTO", "foto"),
      TabMenuItem("DISKUSI", "diskusi"),
    ],
  );

  return AppBar(
    elevation: 0,
    title: InkWell(
        onTap: () {
          context.router.replace(const LandingRoute());
        },
        child:
            Center(child: Image.asset("assets/images/nr_logo_horizontal.png"))),
    bottom: PreferredSize(
      preferredSize: _tabBar.preferredSize,
      child: ColoredBox(color: Colors.blue, child: _tabBar),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.search),
      )
    ],
  );
}
