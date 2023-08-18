import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../resources/image_assets.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImagePath.welcome,
            fit: BoxFit.fill,
            width: 720,
            height: 941,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BaseButton(
                  buttonText: "Sign up",
                  onPressed: () {},
                ),
                const SizedBox(height: 2),
                BaseButton(
                  buttonText: "Sign in",
                  buttonColor: ColorManager.primaryMainEnableColor,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
