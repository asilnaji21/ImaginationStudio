import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class BaseButton extends StatelessWidget {
  Color? buttonColor;
  String buttonText;
  double? height, width;
  void Function()? onPressed;
  BaseButton(
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
