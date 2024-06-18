import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/custom_appbar.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
       appBar: CustomAppBar(
        title: 'Help & Support',
        onLeadingPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ReusableText(
              text: "Welcome to Go Crispy Chicken Company's Help & Support page. We're here to assist you with any questions, concerns, or issues you may have.",
             fontSize: 11,
            ),
            const SizedBox(height: 20),
            const ReusableText(
              text: "Contact Us",
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 10),
            const ReusableText(
              text: "If you need assistance or have any inquiries, please feel free to contact our customer support team at:",
             fontSize: 11,
            ),
            const ReusableText(
              text: "Email: support@gocrispychicken.com",
             fontSize: 11,
            ),
            const ReusableText(
              text: "Phone: [+XX-XXX-XXXXXXX]",
             fontSize: 11,
            ),
            const ReusableText(
              text: "Our team is available [days of the week] from [hours of operation] to provide you with prompt assistance.",
             fontSize: 11,
            ),
            const SizedBox(height: 20),
            const ReusableText(
              text: "Frequently Asked Questions (FAQs)",
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 10),
            const ReusableText(
              text: "Browse our FAQs for answers to common questions about our products, services, ordering process, and more. If you don't find what you're looking for, don't hesitate to reach out to us directly.",
             fontSize: 11,
            ),
            const SizedBox(height: 20),
            const ReusableText(
              text: "Feedback",
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 10),
            const ReusableText(
              text: "We value your feedback! Let us know about your experience with Go Crispy Chicken Company. Your input helps us improve our products and services to better serve you.",
             fontSize: 11,
            ),
            const SizedBox(height: 20),
            const ReusableText(
              text: "Terms & Conditions",
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Navigate to Terms & Conditions screen
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => TermsCondition()));
              },
              child: const ReusableText(
                text: "For information about our terms of service, please refer to our Terms & Conditions page.",
               fontSize: 11,
                color: kblack, // Example of adding a clickable link color
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
