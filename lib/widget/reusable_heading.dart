import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildHeading(String title,) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            color: kblack,
          ),
        ),
      ],
    ),
  );
}
