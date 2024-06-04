import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/otp_screen.dart';
import 'package:food_delivery_app/screens/select_map.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
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
             Center(
               child: ReusableText(text: 
                  "Enter your details",
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.w900,
                  textAlign: TextAlign.center,
                ),
             ),
              
            const SizedBox(height: kCustomSizedBoxHeightAb,),
           const ReusableText(
             text:  'First Name', 
            ),
            const SizedBox(height: 15.0), 
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your First Name',
                labelStyle:TextStyle(color: korgGrey), // Remove default label (optional)
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
             text:  'Last Name', 
            ),
                        const SizedBox(height: 15.0),  // Add horizontal spacing
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your last name',
                labelStyle:TextStyle(color: korgGrey),  // Remove default label (optional)
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
             text:  'Email', 
            ),
                        const SizedBox(height: 15.0),  // Add horizontal spacing
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'enter email',
                 labelStyle:TextStyle(color: korgGrey),
                fillColor:kGrayLogo, // Grey background
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Adjust border radius
                  borderSide: BorderSide.none, // Remove border
                ),
              ),
            ),
            SizedBox(height: kCustomSizedBoxHeightH,),
             SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectLocationScreen()));},
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
    );
  }
}
