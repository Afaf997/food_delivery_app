import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'welcome_screen.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String? _selectedLanguage = 'en'; // Set default selected language

  void navigateToWelcomeScreen() {
    if (_selectedLanguage == 'en') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    }
    // Add logic for Arabic if needed
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
              buildLanguageRow('English', 'en'),
              Divider(),
              buildLanguageRow('العربية', 'ar'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLanguageRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 16)),
        Radio<String>(
          activeColor: kOrangeColor,
          value: value,
          groupValue: _selectedLanguage,
          onChanged: (String? newValue) {
            setState(() {
              _selectedLanguage = newValue;
              navigateToWelcomeScreen();
            });
          },
        ),
      ],
    );
  }
}
