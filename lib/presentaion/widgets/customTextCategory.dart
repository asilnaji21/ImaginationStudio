import 'package:flutter/material.dart';

class CustomTextCategory extends StatelessWidget {
  const CustomTextCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(left: 23),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Category",
          style: TextStyle(fontSize: 40, fontFamily: 'Arial'),
        ),
      ),
    );
  }
}

