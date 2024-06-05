import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/order_card.dart';

class HistoryOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        OrderCard(
          imageUrl: 'assets/images/order.png',
          title: 'Tornado Fries',
          price: '23 QR',
          status: 'Completed',
          statusColor: Colors.green,
          buttonText1: 'Order Details',
          buttonText2: null,
        ),
        OrderCard(
          imageUrl: 'assets/images/order.png',
          title: 'Tornado Fries',
          price: '23 QR',
          status: 'Completed',
          statusColor: Colors.green,
          buttonText1: 'Order Details',
          buttonText2: null,
        ),
      ],
    );
  }
}
