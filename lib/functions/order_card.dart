import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/order_details.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class OrderCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String status;
  final Color statusColor;
  final String buttonText1;
  final String? buttonText2;

  OrderCard({
    required this.title,
    required this.price,
    required this.status,
    required this.statusColor,
    required this.buttonText1,
    required this.imageUrl,
    this.buttonText2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Icon(Icons.star, color: Colors.yellow, size: 16),
                        const SizedBox(width: 4),
                        const Text(
                          '4.5',
                          style: TextStyle(fontSize: 12),
                        ),
                        Spacer(),
                        Text(
                          price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kOrangeColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Order ID: #004352',
                      style: TextStyle(fontSize: 13, color: korgGrey),
                    ),
                    const SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Status: ',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          TextSpan(
                            text: status,
                            style: TextStyle(color: statusColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> OrderDetailsScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                            child: ReusableText(text: buttonText1, fontSize: 13),
                          ),
                        ),
                        if (buttonText2 != null) ...[
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              // Handle tap event
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: kOrangeColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9), // Adjust padding as needed
                              child: ReusableText(
                                text: buttonText2!,
                                fontSize: 12,
                                color: kWhite,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
