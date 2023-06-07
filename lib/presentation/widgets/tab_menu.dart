import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/tab_menu_item.dart';

import '../../core/consts/sizes.dart';

class TabMenu extends StatelessWidget {
  const TabMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      padding: const EdgeInsets.all(normal),
      child: SizedBox(
        height: huge,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              TabMenuItem("KABAR"),
              TabMenuItem("JURNAL"),
              TabMenuItem("INFOGRAFIS"),
              TabMenuItem("VIDEO"),
              TabMenuItem("ALBUM FOTO"),
              TabMenuItem("DISKUSI"),
            ],
          ),
        ),
      ),
    );
  }
}
