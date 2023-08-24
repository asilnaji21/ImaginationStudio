import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomContainerCard extends StatelessWidget {
  String? hintText;
  CustomContainerCard({
    required this.hintText,
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
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(13, 21, 241, 0),
          hintText: hintText,
          hintStyle:
              const TextStyle(fontSize: 30, color: ColorManager.textColor2),
          border: InputBorder.none,
        ),
      ),
    );
  }
}