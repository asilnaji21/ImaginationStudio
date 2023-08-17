import 'package:flutter/material.dart';


import 'app/routes/route_constants.dart';
import 'app/routes/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstants.splashRoute,
      onGenerateRoute: RouteGenerator.generateRoutes,
    );
  }
}
