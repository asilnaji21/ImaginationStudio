import 'package:flutter/material.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';
import '../../../app/routes/route_constants.dart';
import '../../widgets/ElevatedButton_custom.dart';
import '../../widgets/text_custom.dart';
import '../../widgets/textbutton_custom.dart';
import '../../widgets/textformfiled_custom.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 51, vertical: 220),
          child: Column(
            children: [
              CustomText(text: "Email"),
              CustomTextFormField(
                icon: Icons.email_outlined,
                nameText: "Enter Email",
              ),
              const SizedBox(
                height: 33,
              ),
              CustomText(text: "Password"),
              CustomTextFormField(
                icon: Icons.visibility_off,
                nameText: "*******",
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "forgot Password?",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 28,
              ),
              CustomElevatedButton(
                text: "signin",
                color: ColorManager.primaryMainEnableColor,
                colortext: ColorManager.textColor,
              ),
              const SizedBox(
                height: 28,
              ),
              CustomTextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConstants.signUpRoute);
                },
                text: 'Or Sign up by',
              )
            ],
          ),
        ),
      ),
    );
  }
}

