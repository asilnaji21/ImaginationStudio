import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class ImageCarouselWithIndicators extends StatefulWidget {
  @override
  _ImageCarouselWithIndicatorsState createState() =>
      _ImageCarouselWithIndicatorsState();
}

class _ImageCarouselWithIndicatorsState
    extends State<ImageCarouselWithIndicators> {
  int _currentIndex = 0;

  final List<String> images = [
    'assets/download.jpg',
    'assets/sign.jpg',
    'assets/hhh.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: images.map((imageUrl) {
            return Image.asset(imageUrl, fit: BoxFit.cover);
          }).toList(),
          options: CarouselOptions(
            height: 200,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 23),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((image) {
            int index = images.indexOf(image);
            return Container(
              width: 19,
              height: 19,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? ColorManager.circleIndicatorColor
                    : ColorManager
                        .circleIndicatorColor2, // Change colors as needed
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
