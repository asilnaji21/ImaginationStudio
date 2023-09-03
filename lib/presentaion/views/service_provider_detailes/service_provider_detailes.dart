import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:project_app/presentaion/views/serviceprovider/domain/model/service_provider_model.dart';
import 'package:project_app/presentaion/widgets/custom_contact_button.dart';
import 'package:project_app/presentaion/widgets/custom_divider.dart';
import 'package:project_app/presentaion/widgets/custom_star_rating.dart';

import '../../widgets/custom_designer_detailes.dart';


class AboutMeView extends StatefulWidget {
  final ServiceProviderModel model;
  const AboutMeView({super.key, required this.model});

  @override
  State<AboutMeView> createState() => _AboutMeViewState();
}

class _AboutMeViewState extends State<AboutMeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        /*  const SizedBox(
          height: 60,
        ),
        const SearchBox(),*/
        const SizedBox(
          height: 20,
        ),
        CustomDesignerDetailes(
          model: widget.model,
        ),
        CustomStarRating(
            initialRating: widget.model.rating, minRating: widget.model.rating),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.share,
                        size: 33,
                      ),
                      SizedBox(
                        width: 270,
                      ),
                      Icon(
                        Icons.language,
                        size: 33,
                      ),
                    ],
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Text(
                    'Website',
                    style: TextStyle(fontSize: 30),
                  ), // كلمة Website
                ],
              ),
              const CustomDividerWithPadding(),
              const Text(
                "About Me",
                style: TextStyle(fontSize: 35),
              ),
              Text(
                widget.model.about,
                style: const TextStyle(fontSize: 25),
              ),
              const CustomDividerWithPadding(),
              const Text(
                "Projects",
                style: TextStyle(fontSize: 35),
              ),
            ],
          ),
        ),
        CarouselSlider(
          items: widget.model.projects.map((project) {
            return Column(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(project.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  project.projectName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20, // حجم النص هنا
                  ),
                ),
              ],
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true, // تشغيل التمرير التلقائي
            enlargeCenterPage: true, // تكبير الصورة المركزية
            aspectRatio: 16 / 9, // نسبة العرض إلى الارتفاع
            viewportFraction: 0.8, // نسبة العرض الظاهرة في الشاشة
          ),
        ),
        const CustomContactButton(),
        const SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
