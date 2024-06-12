import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/All_categories.dart';

Widget buildMenuItem(String imagePath, Color color, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CategoriesScreen()));
    },
    child: Center(
      child: Container(
        width: 78,
        height: 78,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Image.asset(
            imagePath,
            width: 53,
          ),
        ),
      ),
    ),
  );
}
