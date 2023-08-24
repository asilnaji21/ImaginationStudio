import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../config/constant.dart';

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
        padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "You need ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 28),
              ),
              const Text(
                "to explore today",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 28),
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
                  autoPlay: true, 
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9, 
                  viewportFraction: 0.8, 
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
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
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ClipRect(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                Constant.categoriesList[index].image,
                              ),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0, 
                            ),
                          ),
                        ),
                        Text(
                          Constant.categoriesList[index].name,
                          style: const TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 15,
                  ),
                  itemCount: Constant.categoriesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
