import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/order_card.dart';
import 'package:food_delivery_app/utils/constant.dart';

class RunningOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        OrderCard(
          imageUrl: 'assets/images/order.png',
          title: 'Tornado Fries',
          price: '23 QR',
          status: 'Pending',
          statusColor: kOrangeColor,
          buttonText1: 'Order Details',
          buttonText2: 'Track Order',
        ),
        OrderCard(
          imageUrl: 'assets/images/order.png',
          title: 'Tornado Fries',
          price: '23 QR',
          status: 'Pending',
          statusColor: kOrangeColor,
          buttonText1: 'Order Details',
          buttonText2: 'Track Order',
        ),
      ],
    );
  }
}
