
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildCategoryItems(
      String categoryName, Color color, IconData icon, bool isSelected,
      {double width = 210}) {
    return Container(
      width: width,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: kColorgrey,
        border: Border.all(color: isSelected ? kOrangeColor : klgreyColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected ? kOrangeColor : Colors.grey,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              categoryName,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }