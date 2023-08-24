import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged, onSubmitted;
  const SearchBox(
      {super.key, this.controller, this.onChanged, this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Container(
        width: 369,
        height: 42,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: TextField(
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
                fontSize: 30,
                fontFamily: 'Aldhabi',
                color: ColorManager.borderColor),
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
        ),
      ),
    );
  }
}
