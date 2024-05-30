import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';
class MenuItem {
  final String imagePath;
  final String itemName;
  final String rating;
  final String description;
  final String qrCode;

  MenuItem({
    required this.imagePath,
    required this.itemName,
    required this.rating,
    required this.description,
    required this.qrCode,
  });
}

Widget buildImageContainer(MenuItem menuItem) {
  
    return Container(
      margin:const  EdgeInsets.symmetric(horizontal: 20),
      child: buildItem(menuItem),
    );
  }

  Widget buildItem(MenuItem menuItem) {
    return Container(
      width: 354,
      height: 191,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              menuItem.imagePath,
              fit: BoxFit.cover,
              height: 144,
              width: double.infinity,
            ),
          ),
          Positioned(
            bottom: 7,
            left: 8,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ReusableText(text: menuItem.itemName,fontSize: 11, fontWeight: FontWeight.bold)
                      ],
                    ),
                    ReusableText(text: menuItem.qrCode,fontSize: 12,color: kredcolor, ),
                  ],
                ),
                Row(
                  children: [
                   const Icon(
                      Icons.star_rate_rounded,
                      color:  Color.fromARGB(255, 235, 217, 56),
                    ),
                    ReusableText(text: ' ${menuItem.rating}',fontWeight: FontWeight.bold),
                    const SizedBox(width:kCustomSizedBoxWidth),
                    ReusableText(text: menuItem.description,fontSize: 8,)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
