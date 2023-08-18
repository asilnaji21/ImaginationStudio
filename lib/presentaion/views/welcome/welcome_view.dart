import 'package:flutter/material.dart';

import '../../../app/routes/navigator.dart';
import '../../../app/routes/route_constants.dart';
import '../../resources/color_manager.dart';
import '../../resources/image_assets.dart';
import '../../widgets/Base_button.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BaseButton(
                  buttonText: "Sign up",
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteConstants.signUpRoute);
                  },
                ),
                const SizedBox(height: 2),
                BaseButton(
                  buttonText: "Sign in",
                  buttonColor: ColorManager.primaryMainEnableColor,
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteConstants.signInRoute);
                  },
                )
              ],
            ),
            // Positioned(
            //   top: 424,
            //   right: 11,
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 10),
            //     child: ElevatedButton(
            //       onPressed: () {
            //         Navigator.of(context).pushNamed(RouteConstants.signInRoute);
            //       },
            //       child: Text("Login"),
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: ColorManager.primaryMainEnableColor,
            //         textStyle: TextStyle(fontSize: 22, color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
          )
        ],
      ),
    );
  }
}
