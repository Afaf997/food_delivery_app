import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/checkout_summery.dart';
import 'package:food_delivery_app/screens/cart_items.dart';
import 'package:food_delivery_app/screens/deliver_options.dart';
import 'package:food_delivery_app/utils/constant.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kWhite,
        toolbarHeight: 60,
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CartItem(
              title: "Tornado Fries",
              description:
                  "French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs",
              price: 23,
              quantity: 1,
              screenWidth: screenWidth,
            ),
            CartItem(
              title: "Crispy Fried Chicken",
              description:
                  "French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs",
              price: 43,
              quantity: 1,
              screenWidth: screenWidth,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: isPortrait ? screenWidth * 0.6 : screenWidth * 0.7,
                  height: 44,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Enter promo code',
                      labelStyle: TextStyle(color: korgGrey, fontSize: 14),
                      fillColor: kColorgrey,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: isPortrait ? screenWidth * 0.29 : screenWidth * 0.15,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: const Text(
                      "Apply",
                      style: TextStyle(color: kWhite, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            DeliveryOptions(),
            const SizedBox(height: 20),
            CheckoutSummary(),
          ],
        ),
      ),
    );
  }
}


