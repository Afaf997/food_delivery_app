import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/contact_details.dart';
import 'package:food_delivery_app/screens/login_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
              Text(
                "Verification your mobile number",
                style: TextStyle(
                  fontSize: screenWidth * 0.07,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: kCustomSizedBoxHeightA),
              const ReusableText(
                text: 'We have sent you a 4 digit code.',
                fontSize: 11,
              ),
              const ReusableText(
                text: 'Please enter it here to verify your number',
                fontSize: 11,
              ),
              const SizedBox(height: kCustomSizedBoxHeightA),
              PinCodeTextField(
                maxLength: 4,
                autofocus: true,
                wrapAlignment: WrapAlignment.center,
                pinBoxWidth: screenWidth * 0.12,
                pinBoxHeight: screenWidth * 0.12,
                pinBoxRadius: screenWidth * 0.03,
                pinTextStyle: TextStyle(fontSize: screenWidth * 0.05),
                pinBoxColor: kGrayLogo,
                defaultBorderColor:kGrayLogo,
                pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                onDone: (pin) {
                  // Handle the pin input here
                },
              ),const SizedBox(height: kCustomSizedBoxHeightJ,),
                   SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ContactDetails()));},
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
            ],
          ),
        ),
      ),
    );
  }
}
