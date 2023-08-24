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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Aldhabi",
        appBarTheme:
            const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstants.splashRoute,
      onGenerateRoute: RouteGenerator.generateRoutes,
    );
  }
}
