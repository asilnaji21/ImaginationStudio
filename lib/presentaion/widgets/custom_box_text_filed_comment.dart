import 'package:flutter/material.dart';

class CustomBoxTextFiledComment extends StatelessWidget {
  const CustomBoxTextFiledComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 379,
      height: 97,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black),
      ),
      margin: const EdgeInsets.all(10),
      child: const Padding(
        padding: EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          maxLines: null,
        ),
      ),
    );
  }
}
