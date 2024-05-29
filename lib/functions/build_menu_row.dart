import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/build_menu_item.dart';
import 'package:food_delivery_app/functions/switch_color.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildMenuRow() {
  List<String> menuImages = [
    'assets/images/product1.png',
    'assets/images/product2.png',
    'assets/images/product3.png',
    'assets/images/product4.png',
  ];

  List<String> menuNames = [
    'Go Crispy Original',
    'Extreme Meals',
    'Bucket Meal',
    'Kids Meals',
  ];

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(4, (index) {
        return Container(
          width: 120, // Adjust width as needed
          height: 160, // Fixed height for each menu item container
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8), // Adjust spacing between image and text
                child: buildMenuItem(
                  menuImages[index],
                  getContainerColor(index),
                ),
              ),
              Text(
                menuNames[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kblack,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      }),
    ),
  );
}
