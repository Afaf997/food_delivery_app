import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/language_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Aeonik"),
      debugShowCheckedModeBanner: false,
      title: 'food_delivery',
      home: const LanguageScreen(),
     
    );
  }
}
