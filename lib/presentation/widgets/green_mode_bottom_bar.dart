import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';

import '../../core/consts/sizes.dart';

class GreenModeBottomBar extends StatelessWidget {
  const GreenModeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainColor = Color(greenModeColor);
    final textStyle = TextStyle(color: mainColor);
    final boxBorder = BoxDecoration(border: Border.all(color: mainColor));
    final margin = const EdgeInsets.symmetric(horizontal: normal);
    return Container(
      padding: const EdgeInsets.all(normal),
      color: Colors.white,
      child: Row(
        children: [
          RoundedContainer(
            medium,
            margin: margin,
            boxDecoration: boxBorder,
            child: Text(
              "KABAR",
              style: textStyle,
            ),
          ),
          RoundedContainer(
            medium,
            margin: margin,
            boxDecoration: boxBorder,
            child: Text(
              "JURNAL",
              style: textStyle,
            ),
          ),
          RoundedContainer(medium,
              margin: margin,
              boxDecoration: boxBorder,
              child: Text(
                "INFOGRAFIS",
                style: textStyle,
              )),
          RoundedContainer(medium,
              margin: margin,
              boxDecoration: boxBorder,
              child: Text(
                "VIDEO",
                style: textStyle,
              )),
          RoundedContainer(medium,
              margin: margin,
              boxDecoration: boxBorder,
              child: Text(
                "ALBUM FOTO",
                style: textStyle,
              )),
          RoundedContainer(medium,
              margin: margin,
              boxDecoration: boxBorder,
              child: Text(
                "DISKUSI",
                style: textStyle,
              )),
        ],
      ),
    );
  }
}
