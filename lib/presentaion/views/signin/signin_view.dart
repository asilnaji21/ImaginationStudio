import 'package:flutter/material.dart';
import 'package:project_app/config/cache.dart';
import 'package:project_app/core/providerstate/firebase_auth_methods.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';
import 'package:project_app/presentaion/views/main/domain/model/user_model.dart';
import 'package:project_app/presentaion/widgets/elevated_button_custom.dart';
import 'package:provider/provider.dart';
import '../../../app/routes/route_constants.dart';
import '../../widgets/text_custom.dart';
import '../../widgets/textformfiled_custom.dart';
import '../signup/user_signup_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void loginUser() {
    context.read<FirebaseAuthMethods>().loginWithEmail(
          email: _emailController.text,
          password: _passwordController.text,
          context: context,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customBackground(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
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
                  controller: _emailController,
                ),
                const SizedBox(
                  height: 18,
                ),
                const CustomText(text: "Password"),
                CustomTextFormField(
                  icon: Icons.visibility_off,
                  nameText: "*******",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Password";
                    }
                    return null;
                  },
                  controller: _passwordController,
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
                    if (_formKey.currentState!.validate()) {
                      loginUser();
                    }
                  },
                  text: "Sign in",
                  color: ColorManager.primaryMainEnableColor,
                  colortext: ColorManager.textColor,
                  width: 350,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not registeres?",
                      style: TextStyle(
                          fontSize: 25, color: ColorManager.textColor2),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouteConstants.userSignUpRoute);
                      },
                      child: const Text(
                        "Sign up",
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
                const SizedBox(
                  height: 150,
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
      ),
    );
  }
}
