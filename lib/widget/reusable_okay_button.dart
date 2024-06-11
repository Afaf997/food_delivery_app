import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class ReusableOkeyButton extends StatelessWidget {
  final Widget navigationTarget;
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

  const ReusableOkeyButton({
    super.key,
    required this.navigationTarget,
    required this.buttonText,
    this.buttonColor = kOrangeColor,
    this.textColor = Colors.white,
    this.fontSize = 16.0,
    
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigationTarget),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
