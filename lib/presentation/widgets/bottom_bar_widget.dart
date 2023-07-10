import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/sizes.dart';

class BottomBarWidget extends StatelessWidget {
  final Color? bgColor;
  const BottomBarWidget({this.bgColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: BottomNavigationBar(
        backgroundColor: bgColor,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Container(
                margin: const EdgeInsets.symmetric(horizontal: normal),
                child: Image.asset("assets/images/oto.png")),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset("assets/images/kons.png"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
                margin: const EdgeInsets.symmetric(horizontal: normal),
                child: Image.asset("assets/images/mada.png")),
          ),
        ],
      ),
    );
  }
}
