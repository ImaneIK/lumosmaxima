import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart' as s;
import 'login.dart';


Future<void> main() async {
  await s.Settings.init(cacheProvider: s.SharePreferenceCache());
  runApp(
      MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            splash: 'assets/logo.png',
            duration: 1000,
            nextScreen: LoginScreen(),
            splashTransition: SplashTransition.fadeTransition,
            splashIconSize: 200,
          ),
    );
  }
}
