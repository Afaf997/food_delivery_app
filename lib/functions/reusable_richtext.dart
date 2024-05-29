import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildCircularBadge(String mainText, String subText, Color backgroundColor) {
  return Container(
    padding:const EdgeInsets.all(9.0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: backgroundColor,
    ),
    child: Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$mainText\n',
              style:const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w900,
                color: kWhite,
              ),
            ),
            TextSpan(
              text: subText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: kWhite,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildTextSection(String text, Color color, double fontSize, FontWeight fontWeight) {
  return Container(
    height: 70,
    width: 110,
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildBuyGetBadge(String mainText, String subText, Color textColor) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
    decoration: BoxDecoration(
      color: kOrangeColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(9.0),
      ),
    ),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$mainText\n',
            style: TextStyle(
              color: textColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: subText,
            style: TextStyle(
              color: textColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
