import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  String? text;
  Color? colortext;
  Color? color;
  CustomElevatedButton({
    required this.color,
    required this.text,
    required this.colortext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {},
        child: Text(
          text!,
          style: TextStyle(fontSize: 20, color: colortext),
        ));
  }
}
