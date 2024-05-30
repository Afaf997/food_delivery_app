import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

Widget buildTitleRow(String title, {String actionText = ''}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(text:title,fontSize: 22.0,
            fontWeight: FontWeight.w900,
            color: kblack,),
        ReusableText(text:actionText,fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: kredcolor,),
      ],
    ),
  );
}
