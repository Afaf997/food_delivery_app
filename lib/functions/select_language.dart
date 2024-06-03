import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

Widget buildLanguageRow(String title, bool isChecked, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableText(text: title,fontSize: 18,),
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
              color: isChecked ? kOrangeColor : Colors.transparent,
            ),
            child: isChecked
                ? Container(
                    width: 14,
                    height: 14, 
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kOrangeColor,
                    ),
                  )
                : null,
          ),
        ],
      ),
    ),
  );
}