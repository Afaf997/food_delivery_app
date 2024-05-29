import 'package:flutter/material.dart';

Widget buildMenuItem(String imagePath, Color color) {
  return Container(
    width:80,
    height: 80, 
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
  );
}
