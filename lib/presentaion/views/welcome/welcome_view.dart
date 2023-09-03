import 'package:flutter/material.dart';
import 'package:project_app/presentaion/widgets/custom_logo.dart';

import '../../../app/routes/route_constants.dart';
import '../../resources/color_manager.dart';
import '../../resources/image_assets.dart';
import '../../widgets/base_button.dart';

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
          const CustomLogo(),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BaseButton(
                  buttonText: "Sign up",
                  onPressed: () {
                    /*Navigator.pushNamed(
                        context, RouteConstants.userSignUpRoute);*/
                    Navigator.of(context)
                        .pushNamed(RouteConstants.userSignUpRoute);

                    //  NavigationManager.pushNamed(RouteConstants.userSignUpRoute);
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
          ),
        ],
      ),
    );
  }
}
