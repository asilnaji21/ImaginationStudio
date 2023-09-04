import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_app/core/providerstate/firebase_auth_methods.dart';

import '../../../app/routes/route_constants.dart';
import '../../resources/color_manager.dart';
import '../../widgets/elevated_button_custom.dart';
import '../../widgets/text_custom.dart';
import '../../widgets/textformfiled_custom.dart';
import '../signup/user_signup_view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  TextEditingController _emailController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customBackground(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                const CustomText(text: "Email"),
                CustomTextFormField(
                  icon: Icons.email_outlined,
                  nameText: "Enter Email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await FirebaseAuthMethods(auth).sendPasswordResetEmail(
                            email: _emailController.text, context: context);
                      }
                    },
                    color: ColorManager.primaryMainColor,
                    text: "Send link",
                    width: 300,
                    colortext: ColorManager.whiteColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
