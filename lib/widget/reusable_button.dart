import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class ReusableButton extends StatelessWidget {
  final Widget navigationTarget;
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

  const ReusableButton({
    super.key,
    required this.navigationTarget,
    required this.buttonText,
    this.buttonColor = kOrangeColor,
    this.textColor = Colors.white,
    this.fontSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double buttonHeight = screenHeight * 0.07;  //  7% of screen height
    final double buttonPadding = screenHeight * 0.02; 
    final double adjustedFontSize = screenWidth * 0.04; 

    return SizedBox(
      height: buttonHeight,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigationTarget),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          padding: EdgeInsets.symmetric(vertical: buttonPadding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
