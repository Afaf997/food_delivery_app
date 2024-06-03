import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kOrangeColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.05),
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                'assets/images/image_hand.png',
                // width: screenWidth * 0.6,
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.35, top: screenHeight * 0.05),
                child: Image.asset(
                  'assets/images/image_burger.png',
                  width: screenWidth * 0.4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.4, left: screenWidth * 0.04),
                child: Container(
                  child: Text(
                    "Welcome to Qatar's Own Fried Chicken App!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.11,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Experience Crispy Satisfaction with Every Bite!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.04,
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add navigation or action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Button color
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.1, vertical: screenHeight * 0.02),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Reduce border radius
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.05,
                        ),
                      ),
                    ),
                  ),
                ), 
              ],
            ),
          ),
        ],
      ),
    );
  }
}
