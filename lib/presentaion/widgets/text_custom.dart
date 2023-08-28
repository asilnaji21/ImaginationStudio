import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomText extends StatelessWidget {
  String? text;
  CustomText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          text!,
          style: const TextStyle(
              color: ColorManager.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.w400),
        ));
  }
}
