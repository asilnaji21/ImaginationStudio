import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomContainerCard extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  const CustomContainerCard({
    required this.hintText,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 79,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: ColorManager.borderColor,
        ),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(13, 21, 241, 0),
          hintText: hintText,
          hintStyle:
              const TextStyle(fontSize: 30, color: ColorManager.textColor2),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
