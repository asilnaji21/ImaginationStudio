import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_app/core/providerstate/firebase_auth_methods.dart';
import 'package:provider/provider.dart';

import '../../../app/routes/route_constants.dart';
import '../../resources/color_manager.dart';
import '../../resources/image_assets.dart';
import '../../widgets/ElevatedButton_custom.dart';
import '../../widgets/avatar_cam.dart';
import '../../widgets/text_custom.dart';
import '../../widgets/textbutton_custom.dart';
import '../../widgets/textformfiled_custom.dart';

class UserSignUpView extends StatelessWidget {
  const UserSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: customBackground(
          child: const UserSignUpBody(),
        ));
  }
}

Container customBackground({required Widget child, double? top}) {
  return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagePath.welcome),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
          margin: const EdgeInsets.only(top: 250),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          padding: EdgeInsets.only(top: top ?? 30.0, left: 50, right: 50),
          child: child));
}

class UserSignUpBody extends StatefulWidget {
  const UserSignUpBody({
    Key? key,
  }) : super(key: key);

  @override
  State<UserSignUpBody> createState() => _UserSignUpBodyState();
}

class _UserSignUpBodyState extends State<UserSignUpBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;
  void signUpUser() async {
    await context.read<FirebaseAuthMethods>().signUpWithEmail(
          email: _emailController.text,
          password: _passwordController.text,
          context: context,
        );
  }

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Form(
        key: _formKey,
        child: Column(children: [
          const AvatarCamera(),
          CustomText(text: "Name"),
          CustomTextFormField(
            nameText: "Enter name",
            icon: Icons.person_outline,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your Name";
              }
              return null;
            },
            controller: _nameController,
          ),
          const SizedBox(
            height: 18,
          ),
          CustomText(text: "Email"),
          CustomTextFormField(
            nameText: "Enter email",
            icon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
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
          CustomText(text: "Phone"),
          CustomTextFormField(
            keyboardType: TextInputType.phone,
            nameText: "+972 599999764",
            icon: Icons.phone_rounded,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your phone";
              }
              return null;
            },
            controller: _phoneController,
          ),
          const SizedBox(
            height: 18,
          ),
          CustomText(text: "Password"),
          CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            nameText: "********",
            icon: Icons.visibility_off_outlined,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your Password";
              }
              return null;
            },
            controller: _passwordController,
          ),
          const SizedBox(
            height: 18,
          ),
          CustomText(text: "Confirm Password"),
          CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            nameText: "********",
            icon: Icons.visibility_off_outlined,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your confirmPassword";
              }
              return null;
            },
            controller: _confirmPasswordController,
          ),
          const SizedBox(
            height: 18,
          ),
          CustomElevatedButton(
            color: ColorManager.primaryMainColor,
            text: "Sign up",
            colortext: ColorManager.textColor,
            width: 350,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                signUpUser();
                Navigator.of(context).pushNamed(RouteConstants.signInRoute);
              }
            },
            height: 50,
          ),
          const SizedBox(
            height: 18,
          ),
          CustomTextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteConstants.signInRoute);
              },
              text: "Or Sign In by")
        ]),
      ),
    );
  }


}
