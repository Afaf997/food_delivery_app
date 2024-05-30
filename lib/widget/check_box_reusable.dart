import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildCheckbox(String title, bool isChecked) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            color: Color.fromARGB(255, 134, 134, 134),
          ),
        ),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: Colors.grey),
            color: isChecked ? kOrangeColor : Color.fromARGB(255, 214, 212, 212),
          ),
          child: isChecked
              ? Icon(
                  Icons.check,
                  size: 16,
                  color: Colors.white,
                )
              : null,
        ),
      ],
    ),
  );
}
