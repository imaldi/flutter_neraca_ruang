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
  const MyButton(
      {this.child,
      this.onPressed,
      this.textColor,
      this.backGroundColor,
      this.decoration,
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
                borderRadius: BorderRadius.all(Radius.circular(huge)))),
        onPressed: widget.onPressed ?? () {},
        child: widget.child ?? Text("OK"));
  }
}
