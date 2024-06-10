import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildImageRichContainer(BuildContext context) {
  return Center(
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 17),
      decoration: kImageBoxDecoration,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
        child: Column(
          children: [
            Image.asset(
              'assets/images/Main_image.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    ),
  );
}
