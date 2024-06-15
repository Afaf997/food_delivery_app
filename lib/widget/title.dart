import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

typedef void OnSeeAllPressed();

Widget buildTitleRow(String title, {String actionText = '', OnSeeAllPressed? onSeeAllPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(
          text: title,
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
          color: kblack,
        ),
        GestureDetector(
          onTap: onSeeAllPressed,
          child: ReusableText(
            text: actionText,
            fontSize: 14.0,
            fontWeight: FontWeight.w900,
            color: kredcolor,
          ),
        ),
      ],
    ),
  );
}
