import 'package:flutter/material.dart';

class ColoredCircle extends StatelessWidget {
  final Color color;

  const ColoredCircle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
