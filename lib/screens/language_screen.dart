import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/select_language.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'welcome_screen.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool isArabicSelected = false;
  bool isEnglishSelected = false;

  void navigateToWelcomeScreen() {
    if (isEnglishSelected) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    }
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: kOrangeColor,
    body: Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: Image.asset('assets/images/logo.png', width: 100, height: 100),
          ),
          Positioned(
            top: 60,
            child: Image.asset('assets/images/crispy.png', width: 120, height: 120),
          ),
        ],
      ),
    ),
    bottomSheet: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: Container(
        height: 250,
        width: double.infinity,
        color: kWhite,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildLanguageRow('English', isEnglishSelected, () {
              setState(() {
                isEnglishSelected = !isEnglishSelected;
                if (isEnglishSelected) {
                  isArabicSelected = false;
                  navigateToWelcomeScreen(); 
                }
              });
            }), 
            Divider(),
            buildLanguageRow('العربية', isArabicSelected, () {
              setState(() {
                isArabicSelected = !isArabicSelected;
                if (isArabicSelected) {
                  isEnglishSelected = false;
                  navigateToWelcomeScreen();
                }
              });
            }),
          ],
        ),
      ),
    ),
  );
}
}
