import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/language_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LanguageScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200.0,
          height: 200.0,
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
