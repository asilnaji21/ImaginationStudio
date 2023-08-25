import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomImageStackContactServiceProvider extends StatelessWidget {
  final String imagePath;
  final String imagePathPerson;
  final String nameProvider;
  final String locatioProvider;
  CustomImageStackContactServiceProvider({
    required this.imagePath,
    required this.nameProvider,
    required this.locatioProvider,
    required this.imagePathPerson,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 428,
          height: 290,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                imagePath,
                width: 428,
                height: 234.61,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 22,
                left: 18,
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManager.blue,
                  ),
                  child: Center(
                    child: Image.asset(
                      imagePathPerson,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: nameProvider,
                style: const TextStyle(fontSize: 33, color: Colors.black),
              ),
              TextSpan(
                text: locatioProvider,
                style: const TextStyle(
                    fontSize: 18, color: ColorManager.textColor2),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
