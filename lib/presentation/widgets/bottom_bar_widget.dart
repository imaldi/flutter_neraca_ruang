import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final Color? bgColor;
  const BottomBarWidget({this.bgColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: bgColor,
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset("assets/images/oto.png"),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset("assets/images/kons.png"),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset("assets/images/mada.png"),
        ),
      ],
    );
  }
}
