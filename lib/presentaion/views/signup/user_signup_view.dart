import 'package:flutter/material.dart';
import 'package:project_app/config/cache.dart';
import 'package:project_app/presentaion/views/main/domain/model/user_model.dart';
import 'package:project_app/presentaion/widgets/custom_logo.dart';

import '../../../app/routes/route_constants.dart';
import '../../resources/color_manager.dart';
import '../../resources/image_assets.dart';
import '../../widgets/elevated_button_custom.dart';
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
      child: Column(
        children: [
          const CustomLogo(),
          Expanded(
            child: Container(
                //     margin: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.only(top: top ?? 30.0, left: 50, right: 50),
                child: child),
          ),
        ],
      ));
}

class UserSignUpBody extends StatefulWidget {
  const UserSignUpBody({
    Key? key,
  }) : super(key: key);

  @override
  State<UserSignUpBody> createState() => _UserSignUpBodyState();
}

class _UserSignUpBodyState extends State<UserSignUpBody> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        const AvatarCamera(),
        const CustomText(text: "Name"),
        CustomTextFormField(
            controller: _nameController,
            nameText: "Enter name",
            icon: Icons.person_outline),
        const SizedBox(
          height: 18,
        ),
        const CustomText(text: "Email"),
        CustomTextFormField(
          controller: _emailController,
          nameText: "Enter email",
          icon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 18,
        ),
        const CustomText(text: "Phone"),
        CustomTextFormField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            nameText: "+972 599999764",
            icon: Icons.phone_rounded),
        const SizedBox(
          height: 18,
        ),
        const CustomText(text: "Password"),
        const CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            nameText: "********",
            icon: Icons.visibility_off_outlined),
        const SizedBox(
          height: 18,
        ),
        const CustomText(text: "Confirm Password"),
        const CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            nameText: "********",
            icon: Icons.visibility_off_outlined),
        const SizedBox(
          height: 18,
        ),
        CustomElevatedButton(
          color: ColorManager.primaryMainColor,
          text: "Sign up",
          colortext: ColorManager.textColor,
          width: 350,
          onPressed: () {
            CacheData().setUser(UserModel(
                email: _emailController.text,
                name: _nameController.text,
                phone: _phoneController.text));
            Navigator.of(context).pushNamed(RouteConstants.mainRoute);
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
    );
  }
}
