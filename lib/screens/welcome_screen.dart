import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFED5D37), // Background color ED5D37
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Align to the top
        crossAxisAlignment: CrossAxisAlignment.start, // Center align children horizontally
        children: [
          SizedBox(height: 40), // Add spacing from the top
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Image.asset('assets/images/image_hand.png',),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130,top: 30),
                child: Image.asset('assets/images/image_burger.png', ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Text(
          //   "Welcome to Qatar's Own Fried Chicken App!",
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // SizedBox(height: 10),
          // Text(
          //   "Experience Crispy Satisfaction with Every Bite!",
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 16,
          //   ),
          // ),
          // Spacer(), // Push the button to the bottom of the screen
          // ElevatedButton(
          //   onPressed: () {
          //     // Add navigation or action here
          //   },
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.black, // Button color
          //     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          //   ),
          //   child: Text(
          //     'Get Started',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 18,
          //     ),
          //   ),
          // ),
          // SizedBox(height: 20), // Add spacing at the bottom
        ],
      ),
    );
  }
}