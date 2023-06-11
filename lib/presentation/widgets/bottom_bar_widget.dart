import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset("assets/images/kons.png"),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset("assets/images/mada.png"),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset("assets/images/oto.png"),
        ),
      ],
    );
  }
}
