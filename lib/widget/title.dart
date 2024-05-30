import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildTitleRow(String title, {String actionText = ''}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w900,
            color: kblack,
          ),
        ),
          Text(
            actionText,
            style:const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
      ],
    ),
  );
}
