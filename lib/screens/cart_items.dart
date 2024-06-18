import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class CartItem extends StatefulWidget {
  final String title;
  final String description;
  final int price;
  final int quantity;
  final double screenWidth;

  const CartItem({
    required this.title,
    required this.description,
    required this.price,
    required this.quantity,
    required this.screenWidth,
  });

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.quantity;
  }

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final imageWidth = widget.screenWidth * 0.35;
    final textWidth = widget.screenWidth * 0.35;

    return Container(
      decoration: BoxDecoration(
        color: kColorgrey,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/rowPic.jpg',
              width: imageWidth,
              height: 116,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              width: textWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                 const Row(
                    children: [
                       Icon(Icons.star, color: kstarYellow, size: 10),
                       SizedBox(width: 3),
                       ReusableText(
                        text: '4.5',
                        fontSize: 9,
                      ),
                    ],
                  ),
                  Text(
                    widget.description,
                    style: const TextStyle(fontSize: 8, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${widget.price} QR',
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kredcolor),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: kblack,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove, color: kWhite, size: 14),
                  onPressed: decrementQuantity,
                ),
                Text(
                  '$quantity',
                  style: const TextStyle(color: kWhite, fontSize: 18),
                ),
                IconButton(
                  icon: const Icon(Icons.add, color: kWhite, size: 14),
                  onPressed: incrementQuantity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}