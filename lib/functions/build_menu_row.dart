import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/build_menu_item.dart';
import 'package:food_delivery_app/functions/switch_color.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildMenuRow(BuildContext context) {
  List<String> menuImages = [
    'assets/images/product1.png',
    'assets/images/product2.png',
    'assets/images/product3.png',
    'assets/images/product4.png',
    'assets/images/product1.png',
  ];

  List<String> menuNames = [
    'Go Crispy\nOriginal',
    'Extreme Meals',
    'Bucket Meal',
    'Kids Meals',
    'Extreme Meals',
  ];

  return Center(
    child: Container(
      height: 140, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildMenuItem(
                  menuImages[index],
                  getContainerColor(index,),
                  context
                ),
               const SizedBox(height: kCustomSizedBoxHeightD),
                SizedBox(
                  width: 80, 
                  child: Text(
                    menuNames[index],
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:const TextStyle(
                      color: kblack,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}