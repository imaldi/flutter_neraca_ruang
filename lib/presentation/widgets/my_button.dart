import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';

class MyButton extends ConsumerStatefulWidget {
  final Color? textColor;
  final Color? backGroundColor;
  final void Function()? onPressed;
  final Widget? child;
  final bool isSecondary;
  final BoxDecoration? decoration;
  final double? radius;
  final EdgeInsets? padding;
  const MyButton(
      {this.child,
      this.onPressed,
      this.textColor,
      this.backGroundColor,
      this.decoration,
      this.radius,
      this.padding,
      this.isSecondary = false,
      Key? key})
      : super(key: key);
  // MyButton.secondary({this.child, this.onPressed})
  //     : textColor = Color(primaryColor),
  //       backGroundColor = Colors.white,
  //       decoration = BoxDecoration(
  //           border: Border.all(color: Color(primaryColor), width: 4.0));

  @override
  ConsumerState<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends ConsumerState<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor:
                widget.isSecondary ? Colors.white : Color(primaryColor),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(primaryColor), width: 2),
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.radius ?? huge)))),
        onPressed: widget.onPressed ?? () {},
        child: Container(
            padding:
                widget.padding ?? const EdgeInsets.symmetric(vertical: medium),
            child: widget.child ?? Text("OK")));
  }
}
