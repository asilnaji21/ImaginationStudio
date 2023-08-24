import 'package:flutter/material.dart';

class CustomDividerWithPadding extends StatelessWidget {
  const CustomDividerWithPadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 42),
      child: Divider(
        color: Colors.grey,
        height: 2.0,
        thickness: 2,
      ),
    );
  }
}
