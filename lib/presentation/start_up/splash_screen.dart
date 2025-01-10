import 'package:flutter/material.dart';
import 'package:flutter_assessment/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _mockDelay(context);
    return const Scaffold(
      body: Center(
        child: Text(
          'Flutter Assessment',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  void _mockDelay(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).whenComplete(() {
      if (context.mounted) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.loginScreen);
      }
    });
  }
}
