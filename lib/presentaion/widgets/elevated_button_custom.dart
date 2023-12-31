import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? text;
  final Color? colortext;
  final Color? color;
  final double? height, width;
  final void Function()? onPressed;
  final double? fontSize;
  const CustomElevatedButton({
    required this.color,
    required this.text,
    this.height,
    this.width,
    this.fontSize,
    this.onPressed,
    required this.colortext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? ColorManager.primaryMainColor,
            minimumSize: Size(width ?? 120, height ?? 40),
            //   padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: fontSize ?? 35,
            color: colortext, //fontWeight: FontWeight.bold
          ),
        ));
  }
}
