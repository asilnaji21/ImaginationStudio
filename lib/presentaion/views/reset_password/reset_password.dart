import 'package:flutter/material.dart';

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
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not registeres?",
                    style:
                        TextStyle(fontSize: 25, color: ColorManager.textColor2),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteConstants.signUpRoute);
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 25,
                          color: ColorManager.textColor2,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
