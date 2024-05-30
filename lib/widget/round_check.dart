import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

Widget roundCheckbox(String title, bool isChecked) {
  return Padding(
    padding:const EdgeInsets.symmetric(horizontal: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(text: title,fontSize: 12,color:const Color.fromARGB(255, 134, 134, 134),),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey),
            color: isChecked ? kOrangeColor :const Color.fromARGB(255, 214, 212, 212),
          ),
          child: isChecked
              ?const Icon(
                  Icons.check,
                  size: 16,
                  color:kWhite,
                )
              : null,
        ),
      ],
    ),
  );
}
