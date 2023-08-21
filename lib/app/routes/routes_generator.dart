import 'package:flutter/material.dart';
import 'package:project_app/app/routes/route_constants.dart';
import 'package:project_app/presentaion/views/category/category.dart';
import 'package:project_app/presentaion/views/signup/signup_view.dart';

import '../../presentaion/views/home/home_view.dart';
import '../../presentaion/views/main/main_view.dart';
import '../../presentaion/views/reset_password/reset_pass.dart';
import '../../presentaion/views/reset_password/reset_password.dart';
import '../../presentaion/views/signin/signin_view.dart';
import '../../presentaion/views/signup/user_signup_view.dart';
import '../../presentaion/views/welcome/welcome_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.splashRoute:
        return MaterialPageRoute(
          builder: (context) => const WelcomeView(),
        );

      case RouteConstants.signInRoute:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );
      case RouteConstants.signUpRoute:
        return MaterialPageRoute(
          builder: (context) => const SignUpView(),
        );
      case RouteConstants.userSignUpRoute:
        return MaterialPageRoute(
          builder: (context) =>  UserSignUpView(),
        );

      case RouteConstants.resetPassRoute:
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordView(),
        );
      case RouteConstants.resetPassRoute2:
        return MaterialPageRoute(
          builder: (context) => const ResetPassView(),
        );
      case RouteConstants.mainRoute:
        return MaterialPageRoute(
          builder: (context) => const MainView(),
        );
      case RouteConstants.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case RouteConstants.categoryRoute:
        return MaterialPageRoute(
          builder: (context) => const CategoryView(),
        );
    }

    return unDefineRoute();
  }

  static Route<dynamic> unDefineRoute() => MaterialPageRoute(
      builder: (_) => const Scaffold(
            body: Text("noRouteFound"),
          ));
}
