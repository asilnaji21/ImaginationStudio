import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class ImageCarouselWithIndicators extends StatefulWidget {
  const ImageCarouselWithIndicators({super.key});

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
            return ClipRect(
              clipBehavior: Clip.antiAlias,
              child: Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
            );
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
                    ? ColorManager.circleIndicatorColor2
                    : ColorManager
                        .circleIndicatorColor, // Change colors as needed
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
