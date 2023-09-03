import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:project_app/core/providerstate/firebase_auth_methods.dart';
import 'package:project_app/firebase_options.dart';
import 'package:provider/provider.dart';

import 'package:project_app/app_provider.dart';
import 'package:provider/provider.dart';
import 'app/routes/route_constants.dart';
import 'app/routes/routes_generator.dart';
import 'app_provider.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MultiProvider(
        providers: [
          Provider<FirebaseAuthMethods>(
            create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) => context.read<FirebaseAuthMethods>().authState,
            initialData: null,
          ),
        ],
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
      ),
    );
  }
}
