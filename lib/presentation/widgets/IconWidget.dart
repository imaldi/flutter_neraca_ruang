import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/assets.dart';

import '../../core/consts/sizes.dart';

class IconWidget extends StatelessWidget {
  final String srcPath;
  final double? size;
  final bool isOnlineSource;
  final Function()? onTap;
  const IconWidget(this.srcPath,
      {this.size, this.isOnlineSource = false, this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          constraints:
              BoxConstraints(maxWidth: size ?? extra, maxHeight: size ?? extra),
          child: isOnlineSource
              ? Image.network(
                  srcPath,
                  errorBuilder: (bc, o, st) {
                    return Image.asset(iconError);
                  },
                )
              : Image.asset(
                  srcPath,
                  errorBuilder: (bc, o, st) {
                    return Image.asset(iconError);
                  },
                )),
    );
  }
}
