import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/login_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';
import 'package:food_delivery_app/widget/reusable_replasment_navigations.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

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
                'assets/images/hand-burger.png',
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.44, left: screenWidth * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start of the column
                  children: [
                    Image.asset(
                      'assets/images/welcome.png',
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: screenWidth * 0.7,
                      child: ReusableText(
                        text: "Experience Crispy Satisfaction with Every Bite!",
                        color: kWhite,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:  screenHeight * 0.06,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.05),
                ReusableNavigationButton(
                  navigationTarget: LoginScreen(),
                  buttonText: 'Get Started',
                  buttonColor: kblack,
                  textColor: kWhite,
                  fontSize: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
