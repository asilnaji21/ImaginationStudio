import 'package:flutter/material.dart';
import 'package:project_app/app/routes/route_constants.dart';

import '../../presentaion/views/signin/signin_view.dart';
import '../../presentaion/views/welcome/welcome_view.dart';


class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.splashRoute:
        return MaterialPageRoute(
          builder: (context) => WelcomeView(),
        );

      case RouteConstants.signInRoute:
        return MaterialPageRoute(
          builder: (context) => SignInView(),
        );
    }

    return unDefineRoute();
  }

  static Route<dynamic> unDefineRoute() => MaterialPageRoute(
      builder: (_) => const Scaffold(
            body: Text("AppStrings.noRouteFound"),
          ));
}
