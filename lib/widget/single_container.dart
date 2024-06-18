import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/bottom_sheet.dart';
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

Widget buildImageContainer(BuildContext context, MenuItem menuItem) {
  return GestureDetector(
    onTap: () {
      showCustomBottomSheet(context);
    },
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: buildItem(menuItem),
    ),
  );
}

Widget buildItem(MenuItem menuItem) {
  return Center(
    child: Container(
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
          const Positioned(
            top: 8,
            right: 8,
            child: Icon(
              Icons.favorite,
              color: kWhite,
              size: 15,
            ),
          ),
          Positioned(
            top: 110,
            left: 3,
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 55, 132, 57),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: ReusableText(
                  text: '15%',
                  color: kWhite,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            left: 8,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ReusableText(
                      text: menuItem.itemName,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color:kstarYellow,
                      size: 12,
                    ),
                    ReusableText(
                      text: ' ${menuItem.rating}',
                      fontWeight: FontWeight.bold,
                      fontSize: 9,
                    ),
                    const SizedBox(width: kCustomSizedBoxWidth),
                    ReusableText(
                      text: menuItem.description,
                      fontSize: 8,
                    ),
                    Expanded(child: Container()),
                    ReusableText(
                      text: menuItem.qrCode,
                      fontSize: 16,
                      color: kredcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
