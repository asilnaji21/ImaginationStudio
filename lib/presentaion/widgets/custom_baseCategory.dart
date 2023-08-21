import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomBaseCategory extends StatelessWidget {
  final String? namecategory;
  final String? imageUrl;
  const CustomBaseCategory({
    required this.namecategory,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 428,
        height: 120,
        decoration: const BoxDecoration(
          color: ColorManager.textColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                namecategory!,
                style: const TextStyle(
                  color: ColorManager.blackColor,
                  fontSize: 38,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: Image.asset(
                imageUrl!,
                width: 85,
                height: 85,
              ),
            ),
          ],
        ));
  }
}
