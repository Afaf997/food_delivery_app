import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class CategoryItem extends StatelessWidget {
  final String label;
  final Color color;
  final double width;

  const CategoryItem({
    Key? key,
    required this.label,
    required this.color,
    this.width = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: klgreyColor),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color == kOrangeColor ? kWhite : kblack,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
      ),
    );
  }
}
