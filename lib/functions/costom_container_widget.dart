import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class CustomContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 352,
      height: 70,
      decoration: BoxDecoration(
        color: kOrangeColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child:const Row(
        children: [
          SizedBox(width: 20),
          Text(
            'Total',
            style: TextStyle(fontSize: 14, color: kWhite),
          ),
          SizedBox(width: 10),
          Text(
            '23 QR',
            style: TextStyle(fontSize: 19, color: kWhite, fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 120),
          Text(
            'Add to cart',
            style: TextStyle(fontSize: 16, color: kWhite, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
