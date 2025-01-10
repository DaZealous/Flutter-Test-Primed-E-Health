import 'package:flutter/material.dart';
import 'package:flutter_assessment/presentation/auth/login/login_screen.dart';
import 'package:flutter_assessment/presentation/home_page/home_page.dart';
import 'package:flutter_assessment/presentation/product_detail/product_detail_screen.dart';
import 'package:flutter_assessment/presentation/start_up/splash_screen.dart';

class AppRoutes {

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    splashScreen: (context) => const SplashScreen(),
    homeScreen: (context) => HomePage(),
    productDetailScreen: (context) => ProductDetailScreen(),
  };

  static String splashScreen = '/';
  static String loginScreen = '/login_screen';
  static String homeScreen = '/home_screen';
  static String productDetailScreen = '/product_detail_screen';
}
