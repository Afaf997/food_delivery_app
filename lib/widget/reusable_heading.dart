import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

Widget buildHeading(String title,) {
  return Padding(
    padding:const EdgeInsets.symmetric(horizontal: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(text: title,fontSize: 14,fontWeight: FontWeight.w800,color:kblack,)
      ],
    ),
  );
}
