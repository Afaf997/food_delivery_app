import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/select_map.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
      var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const ReusableText(
          text: "MyProfile",
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                  child: Image.asset(
                    'assets/images/profile.png', // Replace with your image path
                    width: 80, // Adjust the width as needed
                    height: 80, // Adjust the height as needed
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 4,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: kOrangeColor, // Background color of the icon
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero, // Remove padding for the icon
                      onPressed: () {
                        // Add your edit functionality here
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white, // Icon color
                        size: 16, // Adjust the icon size as needed
                      ),
                    ),
                  ),
                ),
              ],
            ),
     SingleChildScrollView(
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
                  borderSide: BorderSide.none, 
                ),
              ),
            ),
            SizedBox(height: kCustomSizedBoxHeightAb,),
            ReusableButton(
                navigationTarget: SelectLocationScreen(),
                buttonText: 'save',
                buttonColor:kOrangeColor,
                textColor: Colors.white,
                fontSize: 16,
              ),
              SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.delete),
                  Text("Delete account")
                ],
              )
          ],
        ),
      ),
          ],
        ),
      ),
    );
  }
}
