import 'package:flutter/material.dart';

import 'package:project_app/app/routes/route_constants.dart';
import 'package:project_app/config/cache.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';
import 'package:project_app/presentaion/views/main/domain/model/user_model.dart';
import 'package:project_app/presentaion/widgets/elevated_button_custom.dart';


import '../../widgets/custom_text_field_profile.dart';

class EditInformationView extends StatefulWidget {
  const EditInformationView({super.key});

  @override
  State<EditInformationView> createState() => _EditInformationViewState();
}

class _EditInformationViewState extends State<EditInformationView> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
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

                CacheData().getUser()!.name,
                style: const TextStyle(

                    fontSize: 29,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              CustomTextFieldProfile(
                controller: _nameController,
                nameText: CacheData().getUser()!.name,
              ),
              SizedBox(
                height: 20,
              ),
              const CustomTextFieldProfile(
                nameText: 'Ali',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldProfile(
                controller: _phoneController,
                nameText: CacheData().getUser()!.phone,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldProfile(
                controller: _emailController,
                nameText: CacheData().getUser()!.email,
              ),
              SizedBox(
                height: 20,
              ),
              const CustomTextFieldProfile(
                nameText: 'Gender',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                color: ColorManager.primaryMainColor,
                height: 40,
                width: 240,
                text: "Save",
                colortext: Colors.white,
                onPressed: () {
                  CacheData().setUser(UserModel(
                      email: _emailController.text,
                      name: _nameController.text,
                      phone: _phoneController.text));
                  Navigator.of(context).pushNamed(RouteConstants.mainRoute);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
