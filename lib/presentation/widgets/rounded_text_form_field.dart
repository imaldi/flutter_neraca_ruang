import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';

import '../../core/consts/sizes.dart';

class RoundedTextFormField extends StatelessWidget {
  final String? hint;
  final InputDecoration? decoration;
  final TextEditingController? controller;
  const RoundedTextFormField(
      {this.decoration, this.controller, this.hint, Key? key})
      : super(key: key);
  static const _basicBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Color(primaryColor), width: 4),
      borderRadius: BorderRadius.all(Radius.circular(huge)));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: controller,
          decoration: (decoration ?? const InputDecoration()).copyWith(
              contentPadding: const EdgeInsets.all(medium),
              enabledBorder: _basicBorder,
              disabledBorder: _basicBorder,
              focusedBorder: _basicBorder,
              hintText: hint ?? "Nama")),
    );
  }
}
