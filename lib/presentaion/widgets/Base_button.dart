import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class BaseButton extends StatelessWidget {
  final Color? buttonColor;
  final String buttonText;
  final double? height, width;
  final void Function()? onPressed;
  const BaseButton(
      {Key? key,
      this.buttonColor,
      required this.buttonText,
      this.height,
      this.width,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width ?? 120, height ?? 40),
        backgroundColor: buttonColor ?? ColorManager.primaryMainColor,
        textStyle: const TextStyle(fontSize: 22, color: Colors.white),
      ),
      child: Text(buttonText),
    );
  }
}
