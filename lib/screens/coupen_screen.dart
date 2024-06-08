import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';
import 'package:ticket_material/ticket_material.dart';


class CouponScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const ReusableText(text:'Coupon',fontWeight: FontWeight.bold,),
        centerTitle: true,
      ),
      backgroundColor: kWhite,
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          CouponTicket(
            discount: '50%',
            color: Color(0xFFED5D37),
          ),
          SizedBox(height: 16.0),
          CouponTicket(
            discount: '50%',
            color: Color(0xFFFFC107),
          ),
          SizedBox(height: 16.0),
          CouponTicket(
            discount: '50%',
            color: Color(0xFF4CAF50),
          ),
        ],
      ),
    );
  }
}

class CouponTicket extends StatelessWidget {
  final String discount;
  final Color color;

  CouponTicket({required this.discount, required this.color});

  @override
  Widget build(BuildContext context) {
    return TicketMaterial(
      height: 150.0,
      colorBackground: color,
      leftChild: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get Flat 50% off for your first order',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      rightChild: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              discount,
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Off',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
