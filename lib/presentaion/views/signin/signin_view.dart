import 'package:flutter/material.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';
import '../../../app/routes/route_constants.dart';
import '../../widgets/ElevatedButton_custom.dart';
import '../../widgets/text_custom.dart';
import '../../widgets/textformfiled_custom.dart';
import '../signup/user_signup_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customBackground(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CustomText(text: "Email"),
              CustomTextFormField(
                icon: Icons.email_outlined,
                nameText: "Enter Email",
              ),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Password"),
              CustomTextFormField(
                icon: Icons.visibility_off,
                nameText: "*******",
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteConstants.resetPassRoute);
                    },
                    child: const Text(
                      "forgot Password?",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConstants.mainRoute);
                },
                text: "Sign in",
                color: ColorManager.primaryMainEnableColor,
                colortext: ColorManager.textColor,
                width: 350,
              ),
              const SizedBox(
                height: 28,
              ),
              /*   CustomTextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConstants.signUpRoute);
                },
                text: 'Or Sign up by',
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
