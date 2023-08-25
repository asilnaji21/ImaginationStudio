import 'package:flutter/material.dart';
import 'package:project_app/app/routes/route_constants.dart';
import 'package:project_app/presentaion/views/category/category.dart';
import 'package:project_app/presentaion/views/mycart/mycart_view.dart';
import 'package:project_app/presentaion/views/product/product_view.dart';
import 'package:project_app/presentaion/views/signup/signup_view.dart';

import '../../presentaion/views/My order/myorder.dart';
import '../../presentaion/views/category/category.dart';
import '../../presentaion/views/home/home_view.dart';
import '../../presentaion/views/local_manufactures/local_manufactures.dart';
import '../../presentaion/views/main/main_view.dart';
import '../../presentaion/views/mycart/mycart_view.dart';
import '../../presentaion/views/product/product_view.dart';
import '../../presentaion/views/profile/edit_informatio.dart';
import '../../presentaion/views/profile/profile_serviceProvider.dart';
import '../../presentaion/views/profile/profile_view.dart';
import '../../presentaion/views/reset_password/reset_pass.dart';
import '../../presentaion/views/reset_password/reset_password.dart';
import '../../presentaion/views/saved/saved_view.dart';
import '../../presentaion/views/serviceprovider/contact_service_provider.dart';
import '../../presentaion/views/signin/signin_view.dart';
import '../../presentaion/views/signup/user_signup_view.dart';
import '../../presentaion/views/welcome/welcome_view.dart';
import 'route_constants.dart';

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
          builder: (context) => UserSignUpView(),
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
      /*   case RouteConstants.productRoute:
        return MaterialPageRoute(
          builder: (context) => const ProductView(),
        );*/
      case RouteConstants.savedRoute:
        return MaterialPageRoute(
          builder: (context) => const SavedView(),
        );
      case RouteConstants.myCartRoute:
        return MaterialPageRoute(
          builder: (context) => const MyCart(),
        );
      case RouteConstants.localManufacturesRoute:
        return MaterialPageRoute(
          builder: (context) => const LocalManufacturesRoute(),
        );
      case RouteConstants.profileRoute:
        return MaterialPageRoute(
          builder: (context) => const MyProfileView(),
        );
      case RouteConstants.myOrderRoute:
        return MaterialPageRoute(
          builder: (context) =>  MyOrderView(),
        );
      case RouteConstants.editInformationRoute:
        return MaterialPageRoute(
          builder: (context) =>  EditInformationView(),
        );
      case RouteConstants.serviceProviderRoute:
        return MaterialPageRoute(
          builder: (context) => ServiceProvider(),
        );
    }

    return unDefineRoute();
  }

  static Route<dynamic> unDefineRoute() => MaterialPageRoute(
      builder: (_) => const Scaffold(
            body: Text("noRouteFound"),
          ));
}
