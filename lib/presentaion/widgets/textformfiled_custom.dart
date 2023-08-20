import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  String? nameText;
  IconData? icon;
  CustomTextFormField({
    required this.nameText,
    required this.icon,
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
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 16, top: 14),
          border: InputBorder.none,
          suffixIcon: Icon(icon),
          hintText: nameText,
          hintStyle: const TextStyle(
            fontFamily: 'assets/aldhabi.ttf',
          ),
        ),
      ),
    );
  }
}