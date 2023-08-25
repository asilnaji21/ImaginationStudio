import 'package:flutter/material.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';

import '../../widgets/CustomTextFieldProfile.dart';

class EditInformationView extends StatelessWidget {
  const EditInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 33),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Edit Information",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/man.png'),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'Khaled Ali',
                style: TextStyle(
                    fontSize: 29,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              CustomTextFieldProfile(
                nameText: 'Khaled',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFieldProfile(
                nameText: 'Ali',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFieldProfile(
                nameText: '+972-1234-56789',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFieldProfile(
                nameText: 'email@gmail.com',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFieldProfile(
                nameText: 'Gender',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
