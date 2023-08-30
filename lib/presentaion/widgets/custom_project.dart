import 'dart:math' as math;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../views/serviceprovider/domain/model/service_provider_model.dart';

class CustomDesignerProject extends StatelessWidget {
  const CustomDesignerProject({
    Key? key,
    required this.designer,
    required this.index,
  }) : super(key: key);

  final ServiceProviderModel designer;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.textColor,
      child: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          Container(
            width: 428,
            height: 237,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(designer.projects[index].image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    designer.projects[index].projectName,
                    style: const TextStyle(
                      fontSize: 49,
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorManager.blue,
                      ),
                      child: Center(
                        child: Image.network(
                          designer.image,
                          width: 55,
                          height: 55,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      designer.name,
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Card(
                  color: Colors.white,
                  child: ExpansionWidget(
                      initiallyExpanded: true,
                      titleBuilder: (double animationValue, _, bool isExpaned,
                          toogleFunction) {
                        return InkWell(
                            onTap: () => toogleFunction(animated: true),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Expanded(
                                      child: Text(
                                    'Project info',
                                    style: TextStyle(fontSize: 25),
                                  )),
                                  Transform.rotate(
                                    angle: math.pi * animationValue / 2,
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.arrow_downward_sharp,
                                      size: 20,
                                      color: ColorManager.textColor2,
                                    ),
                                  )
                                ],
                              ),
                            ));
                      },
                      content: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          designer.projects[index].projectDetails,
                          style: const TextStyle(fontSize: 25),
                        ),
                      )),
                ),
                const SizedBox(height: 20),
                Card(
                  color: Colors.white,
                  child: ExpansionWidget(
                      initiallyExpanded: true,
                      titleBuilder: (double animationValue, _, bool isExpaned,
                          toogleFunction) {
                        return InkWell(
                            onTap: () => toogleFunction(animated: true),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Expanded(
                                      child: Text(
                                    'Project images',
                                    style: TextStyle(fontSize: 25),
                                  )),
                                  Transform.rotate(
                                    angle: math.pi * animationValue / 2,
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.arrow_downward_sharp,
                                      size: 20,
                                      color: ColorManager.textColor2,
                                    ),
                                  )
                                ],
                              ),
                            ));
                      },
                      content: Container(
                        width: double.infinity,
                        height: 230,
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 20),
                        child: CarouselSlider(
                          items: designer.projects[index].projectImages
                              .map((projectImage) {
                            return Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage(projectImage),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                          options: CarouselOptions(
                            autoPlay: true, // تشغيل التمرير التلقائي
                            enlargeCenterPage: true, // تكبير الصورة المركزية
                            aspectRatio: 16 / 9, // نسبة العرض إلى الارتفاع
                            viewportFraction:
                                0.8, // نسبة العرض الظاهرة في الشاشة
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
