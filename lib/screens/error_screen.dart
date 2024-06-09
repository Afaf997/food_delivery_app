import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/cart_screen.dart';
import 'package:food_delivery_app/screens/track_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class OrderError extends StatelessWidget {
  const OrderError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOrangeColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 18,right: 18,bottom: 80),
        child: Column(
          children: [
          const  Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableText(
                      text: '404',
                      color: kWhite,
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                    ReusableText(
                      text: 'Sorry! page not found',
                      color: kWhite,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                 Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: kWhite, width: 1), // White border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child:const Text(
                  'Back to Main Menu',
                  style: TextStyle(
                    color: kWhite, 
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
