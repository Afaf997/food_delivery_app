import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildImageRichContainer(BuildContext context) {
  return Center(
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 17),
      decoration: kImageBoxDecoration,
      child: Column(
        children: [
          Image.asset(
            'assets/images/Main_image.png',
            width: MediaQuery.of(context).size.width * kImageWidthRatio,
            height: MediaQuery.of(context).size.height * kImageHeightRatio,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 9),
        
        ],
      ),
    ),
  );
}
