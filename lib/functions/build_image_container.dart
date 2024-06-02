import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_richtext.dart';

Widget buildImageContainer(BuildContext context) {
  return Center(
    child: Container(
      decoration: kImageBoxDecoration,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            child: Image.asset(
              'assets/images/firstImage.jpg',
              width: MediaQuery.of(context).size.width * kImageWidthRatio,
              height: MediaQuery.of(context).size.height * kImageHeightRatio,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 30,
            left: 40,
            child: buildCircularBadge('25', 'QR', Colors.green),
          ),
          Positioned(
            top: 50,
            left: 220,
            child: buildTextSection(
                'Chicken\nBurger', kWhite, 30, FontWeight.w700),
          ),
          Positioned(
            top: 70,
            left: 250,
            child: Transform.rotate(
              angle: -0.2,
              child: buildBuyGetBadge('BUY1', 'GET1', kWhite),
            ),
          ),
        ],
      ),
    ),
  );
}
