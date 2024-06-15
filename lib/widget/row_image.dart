import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/bottom_sheet.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

Widget buildImageRow(BuildContext context) {
  return Center(
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildItem(
            context: context,
            imagePath: 'assets/images/rowPic.jpg',
            itemName: 'Tomado Fries',
            rating: '4.5',
            description: 'Shrimp burger, French Fries, Drink',
            qrCode: 'QR 23',
          ),
          _buildItem(
            context: context,
            imagePath: 'assets/images/rowPic1.jpg',
            itemName: 'Crispy Fried Chicken',
            rating: '4.5',
            description: '12 pcs chicken,French Fries,Drink',
            qrCode: 'QR 43',
          ),
        ],
      ),
    ),
  );
}

Widget _buildItem({
  required BuildContext context,
  required String imagePath,
  required String itemName,
  required String rating,
  required String description,
  required String qrCode,
}) {
  return GestureDetector(
    onTap: () {
      showCustomBottomSheet(context,);
    },
    child: Container(
      width: 175,
      height: 125,
      decoration: BoxDecoration(
        color:kcontainergrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 85,
              width: double.infinity,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 8,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kCustomSizedBoxHeightB),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ReusableText(text: itemName, fontSize: 12, fontWeight: FontWeight.w900),
                      ],
                    ),
                    ReusableText(text: qrCode, fontSize: 12, color: kredcolor,fontWeight: FontWeight.bold),
                  ],
                ),
                Row(
                  children: [
                    ReusableText(text: ' $rating', fontWeight: FontWeight.bold,fontSize: 9,),const SizedBox(width: kCustomSizedBoxHeightD,),
                    ReusableText(text: description, fontSize: 8),
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