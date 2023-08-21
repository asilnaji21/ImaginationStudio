import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> images = [
    'assets/download.jpg',
    'assets/sign.jpg',
    'assets/hhh.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 44,
          ),
          const Text(
            "You need ",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontFamily: "Arial", fontSize: 28),
          ),
          const Text(
            "to explore today",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontFamily: "Arial", fontSize: 28),
          ),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: images.map((image) {
              return Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: true, // تشغيل التمرير التلقائي
              enlargeCenterPage: true, // تكبير الصورة المركزية
              aspectRatio: 16 / 9, // نسبة العرض إلى الارتفاع
              viewportFraction: 0.8, // نسبة العرض الظاهرة في الشاشة
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Divider(
            color: Colors.grey,
            thickness: .9,
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Category",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 25),
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontFamily: "Arial",
                    fontSize: 18),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
