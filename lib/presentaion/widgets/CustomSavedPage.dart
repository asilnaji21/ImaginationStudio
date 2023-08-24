import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class CustomSavedPage extends StatelessWidget {
  final String? namecategory;
  final String? imageUrl;
  final String? price;

  CustomSavedPage(
      {required this.namecategory,
      required this.imageUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 120,
      decoration: BoxDecoration(
        // color: ColorManager.greyColor,
        color: const Color.fromARGB(255, 224, 224, 224),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imageUrl!,
              width: 85,
              height: 84.07,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    namecategory!,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    price!,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(right: 35),
            child: Icon(
              Icons.favorite,
              size: 30,
              color: ColorManager.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
