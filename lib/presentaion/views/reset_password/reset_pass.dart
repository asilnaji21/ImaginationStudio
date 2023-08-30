import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_app/core/providerstate/firebase_auth_methods.dart';

import '../../../app/routes/route_constants.dart';
import '../../resources/color_manager.dart';
import '../../widgets/ElevatedButton_custom.dart';
import '../../widgets/text_custom.dart';
import '../../widgets/textformfiled_custom.dart';

class ResetPassView extends StatefulWidget {
  const ResetPassView({super.key});

  @override
  State<ResetPassView> createState() => _ResetPassViewState();
}

class _ResetPassViewState extends State<ResetPassView> {
    final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 51, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Reset your password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Arial",
                    fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
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
                  keyboardType: TextInputType.visiblePassword,
                  nameText: "********",
                  icon: Icons.visibility_off_outlined),
              const SizedBox(
                height: 18,
              ),
              CustomText(text: "Confirm Password"),
              CustomTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  nameText: "********",
                  icon: Icons.visibility_off_outlined),
              const SizedBox(
                height: 28,
              ),
              CustomElevatedButton(
                onPressed: () {
           
                  Navigator.of(context).pushNamed(RouteConstants.signInRoute);
                },
                width: 300,
                text: "Reset password",
                color: ColorManager.primaryMainColor,
                colortext: ColorManager.textColor,
              ),
              const SizedBox(
                height: 28,
              ),
              /* CustomTextButton(
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
