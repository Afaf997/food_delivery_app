
  import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

Widget buildCategoryItem(String categoryName, Color color,[double width=136]) {
    return Container(
      width:width,
      height: 20, 
      margin:const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child:ReusableText(text: categoryName,color: Colors.white, fontWeight: FontWeight.bold)
,
      ),
    );
  }