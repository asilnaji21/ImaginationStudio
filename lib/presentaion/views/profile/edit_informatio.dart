import 'package:flutter/material.dart';

import '../../widgets/custom_text_field_profile.dart';

class EditInformationView extends StatelessWidget {
  const EditInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 33),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Edit Information",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Khaled Ali',
                style: TextStyle(
                    fontSize: 29,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              CustomTextFieldProfile(
                nameText: 'Khaled',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldProfile(
                nameText: 'Ali',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldProfile(
                nameText: '+972-1234-56789',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldProfile(
                nameText: 'email@gmail.com',
              ),
              SizedBox(
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
