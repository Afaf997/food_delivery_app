import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/order_delivery.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

void showDeliveryFeeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             Image.asset('assets/images/delivery-man .png'),
             const  SizedBox(height: 16),
              const Text(
                'Delivery Fee from your selected address to the branch',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 16),
             const ReusableText(
                text: 
                '10 QR',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kOrangeColor,
                ),
              const SizedBox(height: 16),
             const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal'),
                  Text('42 QR'),
                ],
              ),
              const SizedBox(height: 10),
             const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery fee'),
                  Text('10 QR'),
                ],
              ),
              Divider(),
             const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  Text(
                    '52 QR',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 16),
               SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDelivery()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kOrangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child:const ReusableText(text: 
                    'Okay',color: Colors.white, fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
