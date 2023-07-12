import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';

import '../../core/consts/sizes.dart';

class RoundedTextFormField extends StatelessWidget {
  final String? hint;
  final InputDecoration? decoration;
  final TextEditingController? controller;
  final bool isEnabled;
  final bool readOnly;
  final bool isObscureText;
  final int maxLines;
  final int? maxLength;
  final int errorMaxLines;
  final TextInputType? keyboardType;
  final double? borderRadius;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final EdgeInsets? padding;
  final GlobalKey<FormState>? fieldKey;
  const RoundedTextFormField(
      {this.decoration,
      this.controller,
      this.fieldKey,
      this.hint,
      this.padding,
      this.autovalidateMode,
      this.onEditingComplete,
      this.maxLines = 1,
      this.maxLength,
      this.errorMaxLines = 1,
      this.onChanged,
      this.validator,
      this.borderRadius,
      this.readOnly = false,
      this.isEnabled = true,
      this.isObscureText = false,
      this.keyboardType,
      Key? key})
      : super();

  @override
  Widget build(BuildContext context) {
    final _basicBorder = OutlineInputBorder(
        borderSide: BorderSide(color: Color(primaryColor), width: 4),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? huge)));
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
          maxLength: maxLength,
          readOnly: readOnly,
          enabled: isEnabled,
          controller: controller,
          obscureText: isObscureText,
          keyboardType: keyboardType,
          onChanged: onChanged,
          maxLines: maxLines,
          validator: validator,
          autovalidateMode: autovalidateMode,
          onEditingComplete: onEditingComplete,
          decoration: (decoration ?? const InputDecoration()).copyWith(
              contentPadding: const EdgeInsets.all(medium),
              enabledBorder: _basicBorder,
              disabledBorder: _basicBorder,
              focusedBorder: _basicBorder,
              errorMaxLines: errorMaxLines,
              hintText: hint ?? "Nama")),
    );
  }
}
