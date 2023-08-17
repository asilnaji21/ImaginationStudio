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
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      backgroundColor: ColorManager.primaryMainColor,
                      textStyle:
                          const TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    child: const Text("Sign up"),
                  ),
                  const SizedBox(height: 2),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      backgroundColor: ColorManager.primaryMainEnableColor,
                      textStyle:
                          const TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    child: const Text("Sign in"),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
