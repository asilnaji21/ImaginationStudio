import 'package:flutter/material.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';
import 'package:project_app/presentaion/views/signup/user_signup_view.dart';
import 'package:project_app/presentaion/widgets/ElevatedButton_custom.dart';
import 'package:project_app/presentaion/widgets/textbutton_custom.dart';
import 'package:project_app/presentaion/widgets/textformfiled_custom.dart';
import '../../../app/routes/route_constants.dart';
import '../../widgets/avatar_cam.dart';
import '../../widgets/dropDawnmenu_hidden.dart';
import '../../widgets/text_custom.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: customBackground(
          child: SingleChildScrollView(
            child: Column(children: [
              const AvatarCamera(),
              CustomText(text: "Name"),
              CustomTextFormField(nameText: "Enter name", icon: Icons.person),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Email"),
              CustomTextFormField(nameText: "Enter email", icon: Icons.email),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Phone"),
              CustomTextFormField(
                  nameText: "+972 599999764", icon: Icons.phone),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Password"),
              CustomTextFormField(
                  nameText: "********", icon: Icons.visibility_off),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "confirm Password"),
              CustomTextFormField(
                  nameText: "Enter email", icon: Icons.visibility_off),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Website"),
              CustomTextFormField(
                  nameText: "Enter email", icon: Icons.web_stories),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "address"),
              CustomTextFormField(
                  nameText: "Enter email", icon: Icons.location_city_sharp),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Graduate"),
              CustomTextFormField(
                  nameText: "Enter Graduate", icon: Icons.currency_yen_sharp),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Select category"),
              const CustomDropDawnButton(),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Price"),
              CustomTextFormField(nameText: "\$", icon: Icons.price_change),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Description"),
              CustomTextFormField(
                  nameText: "Enter Description",
                  icon: Icons.currency_yen_sharp),
              const SizedBox(
                height: 18,
              ),
              CustomElevatedButton(
                width: 350,
                onPressed: () {},
                color: ColorManager.primaryMainColor,
                text: "Sign up",
                colortext: ColorManager.textColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "You have account?",
                    style:
                        TextStyle(fontSize: 25, color: ColorManager.textColor2),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteConstants.signInRoute);
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 25,
                          color: ColorManager.textColor2,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  const SizedBox(
                    height: 155,
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
