import 'package:flutter/material.dart';

import '../../core/consts/sizes.dart';

class TabMenuItem extends StatelessWidget {
  final String text;
  const TabMenuItem(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(normal),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
