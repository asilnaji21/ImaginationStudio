import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomTextFieldProfile extends StatelessWidget {
  String? nameText;
   CustomTextFieldProfile({
    required this.nameText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 300,
            height: 55,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10, top: 5),
                hintText:  nameText,
                hintStyle:const TextStyle(
                    fontSize: 29,
                    color: ColorManager.textColor2,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderSide:const BorderSide(color: ColorManager.borderColor),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            )),
      ],
    );
  }
}
