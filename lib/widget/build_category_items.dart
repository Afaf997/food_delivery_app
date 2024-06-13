import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

Widget buildCategoryItem(String categoryName, Color color, [double width = 136]) {
  return Container(
    width: width,
    height: 20,
    margin: const EdgeInsets.only(right: 7),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: color == kTextgreyColor ? korgGrey : klgreyColor,
      ),
    ),
    child: Center(
      child: ReusableText(
        text: categoryName,
        color: color == kOrangeColor ? kWhite : korgGrey,
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
    ),
  );
}
