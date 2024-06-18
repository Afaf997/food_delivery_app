import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/language_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Aeonik",
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.transparent,
        ),
         scaffoldBackgroundColor:kWhite,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Go Crispy',
      home: const LanguageScreen(),
    );
  }
}
