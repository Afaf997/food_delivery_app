import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/custom_bottom_navigation.dart';
import 'package:food_delivery_app/screens/cart_screen.dart';
import 'package:food_delivery_app/screens/track_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class OrderDelivery extends StatelessWidget {
  const OrderDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOrangeColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 18,right: 18,bottom: 50),
        child: Column(
          children: [
           const Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableText(
                      text: 'Thank you!',
                      color: kWhite,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    ReusableText(
                      text: 'Your order is confirmed',
                      color: kWhite,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 10),
                    ReusableText(
                      text: 'Your order ID is 217864',
                      color: kWhite,
                      fontSize: 14,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
               const ReusableButton(
                  navigationTarget: TrackScreen(),
                  buttonText: 'Continue',
                  buttonColor: kWhite,
                  textColor: kOrangeColor,
                  fontSize: 16,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()), 
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side:const BorderSide(color: kWhite, width: 1), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(
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
          ],
        ),
      ),
    );
  }
}
