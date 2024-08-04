// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/constants/colors.dart';

class TextFieldCustomized extends StatelessWidget {
  final String? hintText;
  final int maxLine;
  final TextEditingController? controller;
  const TextFieldCustomized({
    Key? key,
    this.hintText,
    this.maxLine = 1,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      style: const TextStyle(color: CustomColor.scaffoldBg),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: CustomColor.hintDark),
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          fillColor: CustomColor.whiteSecondary,
          focusedBorder: getInputBorder,
          enabledBorder: getInputBorder,
          border: getInputBorder),
    );
  }
}

OutlineInputBorder get getInputBorder {
  return OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10));
}
