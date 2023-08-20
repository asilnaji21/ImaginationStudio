import 'package:flutter/material.dart';

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

class UserSignUpBody extends StatelessWidget {
  const UserSignUpBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        const AvatarCamera(),
        CustomText(text: "Name"),
        CustomTextFormField(nameText: "Enter name", icon: Icons.person_outline),
        const SizedBox(
          height: 18,
        ),
        CustomText(text: "Email"),
        CustomTextFormField(
          nameText: "Enter email",
          icon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 18,
        ),
        CustomText(text: "Phone"),
        CustomTextFormField(
            keyboardType: TextInputType.phone,
            nameText: "+972 599999764",
            icon: Icons.phone_rounded),
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
          height: 18,
        ),
        CustomElevatedButton(
          color: ColorManager.primaryMainColor,
          text: "Sign up",
          colortext: ColorManager.textColor,
          width: 350,
          onPressed: () {},
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
