import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/contact_details.dart';
import 'package:food_delivery_app/screens/login_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';
import 'package:food_delivery_app/widget/reusable_replasment_navigations.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
       backgroundColor: kWhite,
      appBar: AppBar(
         backgroundColor: kWhite,
        leading: IconButton(
          icon: kbackarrowIcon,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            children: [
              const SizedBox(height: kCustomSizedBoxHeightA),
             const Text(
                "Verification your mobile number",
                style: TextStyle(
                  fontSize:36,
                  fontWeight: FontWeight.bold,
                    height: 0.99, 
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: kCustomSizedBoxHeightA),
              const ReusableText(
                text: 'We have sent you a 4 digit code.',
                fontSize: 12,
              ),
              const ReusableText(
                text: 'Please enter it here to verify your number',
                fontSize: 12,
              ),
              const SizedBox(height: kCustomSizedBoxHeightA),
              PinCodeTextField(
                maxLength: 4,
                autofocus: true,
                wrapAlignment: WrapAlignment.center,
                pinBoxWidth: 61,
                pinBoxHeight:56,
                pinBoxRadius: screenWidth * 0.03,
                pinTextStyle: TextStyle(fontSize: screenWidth * 0.05),
                pinBoxColor: kGrayLogo,
                defaultBorderColor:kGrayLogo,
                pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                onDone: (pin) {
                  // Handle the pin input here
                },
              ),const SizedBox(height: kCustomSizedBoxHeightJ,),
              const ReusableNavigationButton(
                navigationTarget: ContactDetails(),
                buttonText: 'Continue',
                buttonColor:kOrangeColor,
                textColor: Colors.white,
                fontSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
