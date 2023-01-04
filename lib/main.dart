import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:test1/pages/appliance.dart';
import 'package:test1/pages/dashboard.dart';
import 'package:test1/pages/profile.dart';
import 'package:test1/pages/settings.dart';
import 'package:test1/pages/users.dart';

import 'login.dart';


void main() {
  runApp( MyApp());
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
