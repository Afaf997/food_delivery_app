
  import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

Widget buildCategoryItem(String categoryName, Color color) {
    return Container(
      width: 136,
      height: 20, 
      margin:const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Center(
        child:ReusableText(text: categoryName,color: Colors.white, fontWeight: FontWeight.bold)
,
      ),
    );
  }