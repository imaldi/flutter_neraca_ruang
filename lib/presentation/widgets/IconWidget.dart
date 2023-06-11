import 'package:flutter/material.dart';

import '../../core/consts/sizes.dart';

class IconWidget extends StatelessWidget {
  final String srcPath;
  final double? size;
  const IconWidget(this.srcPath, {this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints:
            BoxConstraints(maxWidth: size ?? extra, maxHeight: size ?? extra),
        child: Image.asset(srcPath));
  }
}
