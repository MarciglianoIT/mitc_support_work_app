import "package:flutter_dotenv/flutter_dotenv.dart";
import 'package:mitc_support_work_app/theme/colors.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'app/app.locator.dart';
import 'app/app.router.dart';

Future main() async {
  await dotenv.load();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: dotenv.get('API_KEY'),
        authDomain: dotenv.get("AUTH_DOMAIN"),
        projectId: dotenv.get("PROJECT_ID"),
        storageBucket: dotenv.get("STORAGE_BUCKET"),
        messagingSenderId: dotenv.get("MESSAGING_SENDER_ID"),
        appId: dotenv.get("APP_ID"),
        androidClientId: dotenv.get("ANDROID_CLIENT_ID"),
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      theme: ThemeData(
          primaryColor: ColorPalette.primary,
          appBarTheme: const AppBarTheme(
            backgroundColor: ColorPalette.primary,
          )),
    );
  }
}
