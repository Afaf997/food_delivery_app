import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/otp_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';
import 'package:food_delivery_app/widget/reusable_replasment_navigations.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: kCustomSizedBoxHeightH),
            const Text(
              "Login or create an account",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w900,
                height: 0.99, 
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.05),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: kGrayLogo,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/qatar_logo.png',
                    width: 24,
                  ),
                  const SizedBox(width: kCustomSizedBoxWidthE),
                  const ReusableText(
                    text: '+974 |',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mobile number',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: kTextgreyColor,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: kCustomSizedBoxHeightI),
            const ReusableNavigationButton(
              navigationTarget: OtpScreen(),
              buttonText: 'Continue',
              buttonColor: kOrangeColor,
              textColor: Colors.white,
              fontSize: 16,
            ),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: const BorderSide(color: Colors.black, width: 1),
                ),
                child: const ReusableText(
                  text: 'Continue as guest',
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            const ReusableText(
              text: 'By clicking "continue" you agree with',
              color: korgGrey,
              fontSize: 12,
            ),
            const ReusableText(
              text: 'our terms and conditions',
              color: Colors.black,
              fontSize: 12,
              decoration: TextDecoration.underline,
            ),
          ],
        ),
      ),
    );
  }
}
