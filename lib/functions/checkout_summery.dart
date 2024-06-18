import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/summery_row.dart';
import 'package:food_delivery_app/screens/checkout.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_button.dart';

class CheckoutSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration:const BoxDecoration(
        color: Colors.white,
       
      ),
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SummaryRow(label: 'Item Price', value: '66 QR'),
          SummaryRow(label: 'Add ons', value: '6 QR'),
          SummaryRow(label: 'Discount', value: '-20 QR', isDiscount: true),
          Divider(),
          SummaryRow(label: 'Subtotal', value: '42 QR', isTotal: true),
           SizedBox(height: 16),
       ReusableButton(
                navigationTarget:CheckoutScreen(),
                buttonText: 'Continue Checkout',
                buttonColor:kOrangeColor,
                textColor:kWhite,
                fontSize: 16,
              ),
        ],
      ),
    );
  }
}

