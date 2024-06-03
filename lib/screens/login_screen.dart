import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/screens/otp_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const SizedBox(height: kCustomSizedBoxHeightH , ),
            Text(
              "Login or create an account",
              style: TextStyle(
                fontSize: screenWidth * 0.07,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.05),
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                  const ReusableText(text: '+974 |', fontSize: 15),
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
              const SizedBox(height: kCustomSizedBoxHeightH , ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpScreen()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kOrangeColor,
                  padding:const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const ReusableText(
                  text: 'Continue',
                  color:kWhite,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  // Add navigation or action here
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: const BorderSide(color: Colors.black, width: 2),
                ),
                child: const ReusableText(
                  text: 'Continue as guest',
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            const ReusableText(
              text: 'By clicking "continue" you agree with',
              color:korgGrey,
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
