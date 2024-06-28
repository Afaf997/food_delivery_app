import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/otp_screen.dart';
import 'package:food_delivery_app/screens/select_map.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_replasment_navigations.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        leading: IconButton(
          icon: kbackarrowIcon,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen()));
          },
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: ReusableText(
                text: "Enter your details",
                fontSize: 36,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: kCustomSizedBoxHeightAb),
            const ReusableLabelText(text: 'First Name'),
            const SizedBox(height: 15.0),
            const CustomTextField(
              labelText: 'Enter your First Name',
            ),
            const SizedBox(height: kCustomSizedBoxHeightG),
            const ReusableLabelText(text: 'Last Name'),
            const SizedBox(height: 15.0),
            const CustomTextField(
              labelText: 'Enter your last name',
            ),
            const SizedBox(height: kCustomSizedBoxHeightG),
            const ReusableLabelText(text: 'Email'),
            const SizedBox(height: 15.0),
            const CustomTextField(
              labelText: 'enter email',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: kCustomSizedBoxHeightH),
            ReusableNavigationButton(
              navigationTarget: SelectLocationScreen(),
              buttonText: 'Continue',
              buttonColor: kOrangeColor,
              textColor: Colors.white,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableLabelText extends StatelessWidget {
  final String text;

  const ReusableLabelText({required this.text});

  @override
  Widget build(BuildContext context) {
    return ReusableText(
      text: text,
      fontSize: 14,
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextInputType? keyboardType;

  const CustomTextField({required this.labelText, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: korgGrey, fontSize: 14),
        fillColor: kGrayLogo,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
