import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class CouponList extends StatelessWidget {
  const CouponList ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);},
          icon:const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        toolbarHeight: 100,
        title:const ReusableText(
          text: 'Coupon',
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        centerTitle: true,
      ),
    );
  }
}