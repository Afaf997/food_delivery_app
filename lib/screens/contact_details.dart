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
               child: ReusableText(text: 
                  "Enter your details",
                    fontSize:36,
                    fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
             ),
              
            const SizedBox(height: kCustomSizedBoxHeightAb,),
           const ReusableText(
             text:  'First Name', fontSize: 14
            ),
            const SizedBox(height: 15.0), 
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your First Name',
                labelStyle:TextStyle(color: korgGrey,fontSize: 14), // Remove default label (optional)
                fillColor:kGrayLogo, // Grey background
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Adjust border radius
                  borderSide: BorderSide.none, // Remove border
                ),
              ),
            ),

            const SizedBox(height: kCustomSizedBoxHeightG), // Adjust spacing

           const ReusableText(
             text:  'Last Name',fontSize: 14 
            ),
                        const SizedBox(height: 15.0),  // Add horizontal spacing
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your last name',
                labelStyle:TextStyle(color: korgGrey,fontSize: 14),  // Remove default label (optional)
                fillColor:kGrayLogo, // Grey background
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Adjust border radius
                  borderSide: BorderSide.none, // Remove border
                ),
              ),
            ),

            const SizedBox(height: kCustomSizedBoxHeightG), // Adjust spacing

            const ReusableText(
             text:  'Email', fontSize: 14
            ),
                        const SizedBox(height: 15.0),  // Add horizontal spacing
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'enter email',
                 labelStyle:TextStyle(color: korgGrey,fontSize: 14),
                fillColor:kGrayLogo, // Grey background
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Adjust border radius
                  borderSide: BorderSide.none, // Remove border
                ),
              ),
            ),
            SizedBox(height: kCustomSizedBoxHeightH,),
            ReusableNavigationButton(
                navigationTarget: SelectLocationScreen(),
                buttonText: 'Continue',
                buttonColor:kOrangeColor,
                textColor: Colors.white,
                fontSize: 16,
              ),
          ],
        ),
      ),
    );
  }
}
