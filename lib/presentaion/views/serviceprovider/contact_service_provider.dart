import 'package:flutter/material.dart';
import '../../widgets/CustomContactButton.dart';
import '../../widgets/CustomImageStackContactServiceProvider.dart';
import '../../widgets/search_boxCustom.dart';

class ServiceProvider extends StatelessWidget {
  const ServiceProvider({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const SizedBox(
          height: 60,
        ),
        const SearchBox(),
        const SizedBox(
          height: 60,
        ),
        CustomImageStackContactServiceProvider(
          imagePath: 'assets/project.jpg',
          locatioProvider: '"\nEl-Remal St.,Gaza,Palestine"',
          nameProvider: 'Sara Ali',
          imagePathPerson: 'assets/woman.png',
        ),
        const CustomContactButton(),
        const SizedBox(
          height: 33,
        ),
        CustomImageStackContactServiceProvider(
          imagePath: 'assets/project2.jpg',
          locatioProvider: '\nAl-Nasser St., Gaza,Palestine',
          nameProvider: 'Kayan Ali',
          imagePathPerson: 'assets/man.png',
        ),
        const CustomContactButton(),
        const SizedBox(
          height: 33,
        ),
      ]),
    );
  }
}
