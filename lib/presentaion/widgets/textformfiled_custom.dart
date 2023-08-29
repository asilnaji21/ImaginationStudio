import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  final String? nameText;
  final IconData? icon;
  final Color? iconColor;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final void Function()? onPressed;
  const CustomTextFormField({
    required this.nameText,
    this.icon,
    this.controller,
    this.readOnly,
    this.iconColor,
    this.keyboardType,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: ColorManager.borderColor,
        width: 1,
      )),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        style: const TextStyle(fontFamily: "Arial"),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 16, top: 14),
          border: InputBorder.none,
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
      ),
    );
  }
}
