import 'package:flutter/material.dart';
import 'package:project_app/app_provider.dart';
import 'package:provider/provider.dart';
import 'app/routes/route_constants.dart';
import 'app/routes/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Aldhabi",
          appBarTheme:
              const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
        ),
        debugShowCheckedModeBanner: false,
        // home: UploadProject(),
        initialRoute: RouteConstants.splashRoute,
        onGenerateRoute: RouteGenerator.generateRoutes,
      ),
    );
  }
}
