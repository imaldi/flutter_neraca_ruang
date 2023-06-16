import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/assets.dart';

import '../../core/consts/sizes.dart';

class IconWidget extends StatelessWidget {
  final String srcPath;
  final double? size;
  final bool isOnlineSource;
  final Function()? onTap;
  final Widget? customOnErrorWidget;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  const IconWidget(this.srcPath,
      {this.size,
      this.isOnlineSource = false,
      this.onTap,
      this.customOnErrorWidget,
      this.padding,
      this.margin,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: padding,
          margin: margin,
          constraints:
              BoxConstraints(maxWidth: size ?? extra, maxHeight: size ?? extra),
          child: isOnlineSource
              ? Image.network(
                  srcPath,
                  errorBuilder: (bc, o, st) {
                    return customOnErrorWidget ?? Image.asset(iconError);
                  },
                )
              : Image.asset(
                  srcPath,
                  errorBuilder: (bc, o, st) {
                    return customOnErrorWidget ?? Image.asset(iconError);
                  },
                )),
    );
  }
}
