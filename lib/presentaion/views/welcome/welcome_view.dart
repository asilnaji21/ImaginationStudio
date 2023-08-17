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
            fit: BoxFit.cover,
            width: 720,
            height: 941,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("SignUp"),
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.primaryMainColor,
                textStyle: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 424,
            right: 11,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.primaryMainEnableColor,
                  textStyle: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
