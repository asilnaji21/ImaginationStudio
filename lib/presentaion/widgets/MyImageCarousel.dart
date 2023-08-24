import 'package:flutter/material.dart';

class MyImageCarousel extends StatefulWidget {
  const MyImageCarousel({super.key});

  @override
  _MyImageCarouselState createState() => _MyImageCarouselState();
}

class _MyImageCarouselState extends State<MyImageCarousel> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<String> _images = [
    'assets/conrnar.jpg',
    'assets/download.jpg',
    'assets/sign.jpg',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          // Wrap PageView.builder with Container
          height: 250, // Set the height as per your requirement
          child: PageView.builder(
            controller: _pageController,
            itemCount: _images.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Center(
                  child: Image.asset(
                    _images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 120,
          left: -9,
          right: -9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_circle_left_outlined,
                ),
                onPressed: () {
                  if (_currentPage > 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_circle_right_outlined),
                onPressed: () {
                  if (_currentPage < _images.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
