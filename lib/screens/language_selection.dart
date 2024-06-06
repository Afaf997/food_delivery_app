import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class SelectLanguage extends StatefulWidget {
  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  String? _selectedLanguage = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const ReusableText(
          text: 'Language',
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        centerTitle: true,
        leading: IconButton(
          icon:const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          RadioListTile<String>(
            activeColor:kOrangeColor, 
            title: Text('AR (عربي)'),
            value: 'ar',
            groupValue: _selectedLanguage,
            onChanged: (String? value) {
              setState(() {
                _selectedLanguage = value;
              });
            },
          ),
          Divider(),
          RadioListTile<String>(
            activeColor: kOrangeColor, // Set the active color to orange
            title: Text('English (EN)'),
            value: 'en',
            groupValue: _selectedLanguage,
            onChanged: (String? value) {
              setState(() {
                _selectedLanguage = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
