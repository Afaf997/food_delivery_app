import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:food_delivery_app/screens/language_screen.dart';

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
         scaffoldBackgroundColor:Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      title: 'go crispy',
      home: const LanguageScreen(),
    );
  }
}
