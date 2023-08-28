import 'package:flutter/material.dart';
import 'package:project_app/presentaion/widgets/CustomContactButton.dart';
import 'package:project_app/presentaion/widgets/custom_divider.dart';
import '../../widgets/CustomImageStackContactServiceProvider.dart';
import '../../widgets/CustomStarRating .dart';
import '../../widgets/search_boxCustom.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const SizedBox(
          height: 60,
        ),
        const SearchBox(),
        const SizedBox(
          height: 45,
        ),
        CustomImageStackContactServiceProvider(
          imagePath: 'assets/project.jpg',
          locatioProvider: '',
          nameProvider: 'Sara Ali',
          imagePathPerson: 'assets/woman.png',
        ),
        CustomStarRating(),
       const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.share,
                  size: 33,
                ), 
                SizedBox(width: 8), 
                Text(
                  'Share',
                  style: TextStyle(fontSize: 30),
                ), 
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.language,
                  size: 33,
                ), 
                SizedBox(width: 8),
                Text(
                  'Website',
                  style: TextStyle(fontSize: 30),
                ), // كلمة Website
              ],
            ),
          ],
        ),
        const CustomDividerWithPadding(),
        const Text(
          "About Me",
          style: TextStyle(fontSize: 54),
        ),
       const Text(
          "I will help you choose the best furniture for your home, and I will be available for any consultation.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ),
      const  CustomDividerWithPadding(),
       const Text(
          "Projects",
          style: TextStyle(fontSize: 54),
        ),
       const CustomContactButton(),
        const SizedBox(
          height: 60,
        ),
      ]),
    );
  }
}

