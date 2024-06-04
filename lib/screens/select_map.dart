import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectLocationScreen(),
    );
  }
}

class SelectLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map.png'), 
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:const EdgeInsets.only(top: 20.0, left: 16.0),
                child: IconButton(
                  icon:const Icon(Icons.arrow_circle_left_outlined),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 240,
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                const  ReusableText(text: 
                    'Select current location',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  const SizedBox(height: 16),
                  Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: kGrayLogo, // Set background color to white (optional)
                      borderRadius: BorderRadius.circular(8.0), // Adjust border radius
                    ),
                    child:const Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.black),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Al wakrah 31 الوكرة',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(height: 16),
                   const ReusableButton(
                navigationTarget: HomeScreen(),
                buttonText: 'Continue',
                buttonColor:kOrangeColor,
                textColor: Colors.white,
                fontSize: 16,
              ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
