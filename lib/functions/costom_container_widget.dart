import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 352,
      height: 70,
      decoration: BoxDecoration(
        color: kOrangeColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child:const Center(child: ReusableText(text: "Add to cart",fontSize: 16,fontWeight: FontWeight.w600,color: kWhite,)),
    );
  }
}
