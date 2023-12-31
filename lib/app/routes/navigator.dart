import 'package:flutter/material.dart';

class NavigationConfiguration {
  NavigationConfiguration._();
  static NavigationConfiguration navigationConfiguration =
      NavigationConfiguration._();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false);

  void navigateTo(context, widget) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

  void navigateToo(nameScreen) =>
      navigatorKey.currentState!.pushNamed(nameScreen);
}
