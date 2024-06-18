import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/custom_appbar.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';
 // Import your reusable content widget

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
       appBar: CustomAppBar(
        title: 'Privacy Policy',
        onLeadingPressed: () {
          Navigator.pop(context);
        },
      ),
      body: PrivacyPolicyContent(), 
    );
  }
}


class PrivacyPolicyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding:  EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReusableText(
            text: "At Go Crispy Chicken Company, we are committed to protecting the privacy and security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your information when you use our website, mobile app, or interact with us in any way.",
            fontSize: 11,
          ),
          SizedBox(height: 20),
          ReusableText(
            text: "Information We Collect",
           fontSize: 14,
           fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          ReusableText(
            text: "We may collect personal information from you when you visit our website, place an order, sign up for our loyalty program, or participate in surveys or promotions. This information may include your name, email address, phone number, shipping address, payment details, and other relevant information.",
            fontSize: 11,
          ),
          SizedBox(height: 20),
          ReusableText(
            text: "How We Use Your Information",
           fontSize: 14,
           fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          ReusableText(
            text: "We use the information we collect to process your orders, improve our products and services, personalize your experience, and communicate with you about promotions, offers, and updates. We may also use your information to respond to your inquiries and provide customer support.",
            fontSize: 11,
          ),
          SizedBox(height: 20),
          ReusableText(
            text: "Data Security",
           fontSize: 14,
           fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          ReusableText(
            text: "We take the security of your information seriously and implement appropriate measures to protect it from unauthorized access, disclosure, alteration, or destruction. We use industry-standard encryption and security protocols to safeguard your data.",
            fontSize: 11,
          ),
          SizedBox(height: 20),
          ReusableText(
            text: "Third-Party Services",
           fontSize: 14,
           fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          ReusableText(
            text: "We may share your information with trusted third-party service providers who assist us in operating our business, such as payment processors, shipping companies, and marketing partners. These third parties are contractually obligated to protect your information and are only authorized to use it to perform services on our behalf.",
            fontSize: 11,
          ),
          SizedBox(height: 20),
          ReusableText(
            text: "Your Rights",
           fontSize: 14,
           fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          ReusableText(
            text: "You have the right to access, correct, or delete your personal information at any time. You may also choose to opt out of receiving marketing communications from us. Additionally, you can manage your cookie preferences through your browser settings.",
            fontSize: 11,
          ),
          SizedBox(height: 20),
          ReusableText(
            text: "Changes to This Policy",
           fontSize: 14,
           fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          ReusableText(
            text: "We reserve the right to update this Privacy Policy periodically to reflect changes in our practices and legal requirements. We will notify you of any material changes by posting the updated policy on our website or through other appropriate channels.",
            fontSize: 11,
          ),
          SizedBox(height: 20),
          ReusableText(
            text: "Contact Us",
           fontSize: 14,
           fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10),
          ReusableText(
            text: "If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at privacy@gocrispychicken.com.",
            fontSize: 11,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

