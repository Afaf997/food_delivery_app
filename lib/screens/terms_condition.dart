import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
       backgroundColor: kWhite,
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const ReusableText(
          text: "Terms & Conditions",
         fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body:const SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(
              text: "Welcome to Go Crispy Chicken Company. These Terms & Conditions govern your use of our website, mobile app, and services. By accessing or using our platform, you agree to comply with these terms. Please read them carefully.",
                fontSize: 11,
            ),
            SizedBox(height: 20),
            ReusableText(
              text: "1. Use of Our Platform",
                fontSize: 14,
             fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            ReusableText(
              text: "1.1 You must be at least 18 years old to use our platform.",
                fontSize: 11,
            ),
            ReusableText(
              text: "1.2 You agree to provide accurate and complete information when using our services.",
                fontSize: 11,
            ),
            ReusableText(
              text: "1.3 You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.",
                fontSize: 11,
            ),
            SizedBox(height: 20),
            ReusableText(
              text: "2. Ordering & Payments",
                fontSize: 14,
             fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            ReusableText(
              text: "2.1 When placing an order, you agree to pay the listed price for the products or services selected.",
                fontSize: 11,
            ),
            ReusableText(
              text: "2.2 Payments must be made using valid payment methods accepted by Go Crispy Chicken Company.",
                fontSize: 11,
            ),
            ReusableText(
              text: "2.3 All prices listed on our platform are in the local currency and are inclusive of applicable taxes and fees.",
                fontSize: 11,
            ),
            SizedBox(height: 20),
            ReusableText(
              text: "3. Delivery & Returns",
                fontSize: 14,
             fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            ReusableText(
              text: "3.1 We aim to deliver orders promptly and within the estimated delivery timeframe provided.",
                fontSize: 11,
            ),
            ReusableText(
              text: "3.2 If you are not satisfied with your order, please contact us within [number] days for assistance with returns or refunds.",
                fontSize: 11,
            ),
            ReusableText(
              text: "3.3 We reserve the right to refuse or cancel orders in the event of inaccuracies, errors, or fraud.",
                fontSize: 11,
            ),
            SizedBox(height: 20),
            ReusableText(
              text: "4. Intellectual Property",
                fontSize: 14,
             fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            ReusableText(
              text: "4.1 All content on our platform, including text, graphics, logos, images, and software, is the property of Go Crispy Chicken Company and is protected by intellectual property laws.",
                fontSize: 11,
            ),
            ReusableText(
              text: "4.2 You may not use, reproduce, distribute, or modify any content from our platform without prior written consent.",
                fontSize: 11,
            ),
            SizedBox(height: 20),
            ReusableText(
              text: "5. Limitation of Liability",
                fontSize: 14,
             fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            ReusableText(
              text: "5.1 Go Crispy Chicken Company shall not be liable for any direct, indirect, incidental, special, or consequential damages arising from your use of our platform or products/services.",
                fontSize: 11,
            ),
            ReusableText(
              text: "5.2 Our liability is limited to the fullest extent permitted by law.",
                fontSize: 11,
            ),
            SizedBox(height: 20),
            ReusableText(
              text: "6. Governing Law",
                fontSize: 14,
             fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            ReusableText(
              text: "6.1 These Terms & Conditions shall be governed by and construed in accordance with the laws of [Jurisdiction], without regard to its conflict of law provisions.",
                fontSize: 11,
            ),
            SizedBox(height: 20),
            ReusableText(
              text: "7. Changes to Terms & Conditions",
                fontSize: 14,
             fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            ReusableText(
              text: "7.1 We reserve the right to update or modify these Terms & Conditions at any time without prior notice. By continuing to use our platform after such changes, you agree to be bound by the revised terms.",
                fontSize: 11,
            ),
            SizedBox(height: 20),
            ReusableText(
              text: "8. Contact Us",
                fontSize: 14,
             fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10),
            ReusableText(
              text: "8.1 If you have any questions or concerns about these Terms & Conditions, please contact us at support@gocrispychicken.com.",
                fontSize: 11,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
