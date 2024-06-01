import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

Widget buildImageRow() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildItem(
          imagePath: 'assets/images/rowPic.jpg',
          itemName: 'Tomado Fries',
          rating: '4.5',
          description: 'Shrimp burger, French Fries, Drink',
          qrCode: 'QR 23',
        ),
        _buildItem(
          imagePath: 'assets/images/rowPic1.jpg',
          itemName: 'Crispy Fried Chicken',
          rating: '4.5',
          description: '12 pcs chicken,French Fries,Drink',
          qrCode: 'QR 43',
        ),
      ],
    ),
  );
}

Widget _buildItem({
  required String imagePath,
  required String itemName,
  required String rating,
  required String description,
  required String qrCode,
}) {
  return Container(
    width: 170,
    height: 125,
    decoration: BoxDecoration(
      color: Colors.grey[200],
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
          bottom: 1,
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
                      ReusableText(text: itemName,fontSize: 11, fontWeight: FontWeight.bold),
                    ],
                  ),
                  ReusableText(text: qrCode,fontSize: 12,color:kredcolor)
                ],
              ),
              Row(
                children: [
                  ReusableText(text:' $rating',fontWeight: FontWeight.bold ),
                  ReusableText(text: description,fontSize: 8,),

                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}