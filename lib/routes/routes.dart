import 'package:flutter/material.dart';
import 'package:flutter_assessment/presentation/auth/login/login_screen.dart';
import 'package:flutter_assessment/presentation/home_page/home_page.dart';
import 'package:flutter_assessment/presentation/start_up/splash_screen.dart';

class AppRoutes {

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    splashScreen: (context) => const SplashScreen(),
    homeScreen: (context) => HomePage(),
  };

  static String splashScreen = '/';
  static String loginScreen = '/login_screen';
  static String homeScreen = '/home_screen';
}
