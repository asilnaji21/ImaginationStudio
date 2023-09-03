import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomTextFieldProfile extends StatelessWidget {
  final String? nameText;
  final IconData? icon;
  final TextEditingController? controller;
  const CustomTextFieldProfile({
    required this.nameText,
    this.icon,
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: 300,
            height: 55,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: Icon(icon),
                contentPadding: const EdgeInsets.only(left: 10, top: 5),
                hintText: nameText,
                hintStyle: const TextStyle(
                    fontSize: 29,
                    color: ColorManager.textColor2,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorManager.borderColor),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            )),
      ],
    );
  }
}
