import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  String? nameText;
  IconData? icon;
  Color? iconColor;
  bool? readOnly;
  TextInputType? keyboardType;
  TextEditingController? controller;
  void Function()? onPressed;
  String? Function(String?)? validator;
  FocusNode? focusNode;
  void Function()? onEditingComplete;

  final int? maxLines;

  CustomTextFormField({
    required this.nameText,
    this.icon,
    this.controller,
    this.maxLines,
    this.readOnly,
    this.iconColor,
    this.keyboardType,
    this.onPressed,
    this.validator,
    this.focusNode,
    this.onEditingComplete,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onEditingComplete,
      validator: validator,
      controller: controller,
      readOnly: readOnly ?? false,
      focusNode: focusNode,
      keyboardType: keyboardType ?? TextInputType.text,
      style: const TextStyle(fontFamily: "Arial"),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 16, top: 14),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.borderColor, width: 1)),
        suffixIcon: IconButton(
          icon: Icon(
            icon,
            color: iconColor,
          ),
          onPressed: onPressed,
        ),
        hintText: nameText,
        hintStyle: const TextStyle(fontSize: 20, fontFamily: "Aldhabi"),
      ),
    );
  }
}
