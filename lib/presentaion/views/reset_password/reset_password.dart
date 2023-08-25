import 'package:flutter/material.dart';

import '../../../app/routes/route_constants.dart';
import '../../resources/color_manager.dart';
import '../../widgets/ElevatedButton_custom.dart';
import '../../widgets/text_custom.dart';
import '../../widgets/textformfiled_custom.dart';
import '../signup/user_signup_view.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customBackground(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Reset your password",
                style: TextStyle(
                    color: ColorManager.blackColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Request an email reset link",
                style: TextStyle(
                  color: ColorManager.textColor2,
                  fontSize: 30,
                ),
              ),
              CustomText(text: "Email"),
              CustomTextFormField(
                icon: Icons.email_outlined,
                nameText: "Enter Email",
              ),
              const SizedBox(
                height: 60,
              ),
              CustomElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(RouteConstants.resetPassRoute2);
                  },
                  color: ColorManager.primaryMainColor,
                  text: "Send link",
                  width: 300,
                  colortext: ColorManager.whiteColor),
            ],
          ),
        ),
      ),
    );
  }
}
