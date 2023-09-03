import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_app/presentaion/resources/color_manager.dart';
import 'package:project_app/presentaion/views/signup/user_signup_view.dart';


import 'package:project_app/presentaion/widgets/elevated_button_custom.dart';

import 'package:project_app/presentaion/widgets/textformfiled_custom.dart';
import '../../../app/routes/route_constants.dart';
import '../../widgets/avatar_cam.dart';
import '../../widgets/drop_dawnmenu_hidden.dart';



import '../../widgets/text_custom.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;
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

  // void _submitForm() {
  //   if (_formKey.currentState!.validate()) {
  //     final name = _nameController.text;
  //     final email = _emailController.text;
  //     final phone = _phoneController.text;
  //     final password = _passwordController.text;
  //     final confirmPassword = _confirmPasswordController.text;

  //     _formKey.currentState!.reset();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: customBackground(
          child: SingleChildScrollView(

            child: Form(
              key: _formKey,
              child: Column(children: [
                const AvatarCamera(),
                CustomText(text: "Name"),
                CustomTextFormField(
                  nameText: "Enter name",
                  controller: _nameController,
                  icon: Icons.person,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomText(text: "Email"),
                CustomTextFormField(
                  nameText: "Enter email",
                  controller: _emailController,
                  icon: Icons.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomText(text: "Phone"),
                CustomTextFormField(
                  nameText: "+972 599999764",
                  controller: _phoneController,
                  icon: Icons.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your phone";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomText(text: "Password"),
                CustomTextFormField(
                  nameText: "********",
                  controller: _passwordController,
                  icon: Icons.visibility_off,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Password";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomText(text: "confirm Password"),
                CustomTextFormField(
                  nameText: "Enter email",
                  controller: _confirmPasswordController,
                  icon: Icons.visibility_off,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Password";
                    }
                    return null;
                  },
                ),
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
                  onPressed: () async {
                try{
   var user= await auth.createUserWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text);
                }catch(e){

                }
                  },
                  color: ColorManager.primaryMainColor,
                  text: "Sign up",
                  colortext: ColorManager.textColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "You have account?",

            child: Column(children: [
              const AvatarCamera(),
              const CustomText(text: "Name"),
              const CustomTextFormField(
                  nameText: "Enter name", icon: Icons.person),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Email"),
              const CustomTextFormField(
                nameText: "Enter email",
                icon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Phone"),
              const CustomTextFormField(
                  keyboardType: TextInputType.phone,
                  nameText: "+972 599999764",
                  icon: Icons.phone),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Password"),
              const CustomTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  nameText: "********",
                  icon: Icons.visibility_off),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "confirm Password"),
              const CustomTextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  nameText: "********",
                  icon: Icons.visibility_off),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Website"),
              const CustomTextFormField(
                  keyboardType: TextInputType.url,
                  nameText: "Enter website",
                  icon: Icons.web_stories),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "address"),
              const CustomTextFormField(
                  keyboardType: TextInputType.streetAddress,
                  nameText: "Enter address",
                  icon: Icons.location_city_sharp),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Graduate"),
              const CustomTextFormField(
                  nameText: "Enter Graduate", icon: Icons.currency_yen_sharp),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Select category"),
              const CustomDropDawnButton(),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Price"),
              const CustomTextFormField(
                nameText: "\$",
                icon: Icons.price_change,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomText(text: "Description"),
              const CustomTextFormField(
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
