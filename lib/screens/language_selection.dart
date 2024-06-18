import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/custom_appbar.dart';
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
      backgroundColor: kWhite,
        appBar: CustomAppBar(
        title: 'Language',
        onLeadingPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: <Widget>[
          RadioListTile<String>(
            activeColor:kOrangeColor, 
            title: Text('AR (عربي)',style: TextStyle(fontSize: 16),),
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
            activeColor: kOrangeColor,
            title: Text('English (EN)',style: TextStyle(fontSize: 16)),
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
