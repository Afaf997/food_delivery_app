import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/checkout_summery.dart';
import 'package:food_delivery_app/screens/deliver_options.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kWhite,
        toolbarHeight: 60,
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CartItem(
              title: "Tornado Fries",
              description:
                  "French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs",
              price: 23,
              quantity: 1,
              screenWidth: screenWidth,
            ),
            CartItem(
              title: "Crispy Fried Chicken",
              description:
                  "French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs",
              price: 43,
              quantity: 1,
              screenWidth: screenWidth,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: isPortrait ? screenWidth * 0.6 : screenWidth * 0.7,
                  height: 44,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Enter promo code',
                      labelStyle: TextStyle(color: korgGrey, fontSize: 14),
                      fillColor: kColorgrey,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: isPortrait ? screenWidth * 0.29 : screenWidth * 0.15,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: const Text(
                      "Apply",
                      style: TextStyle(color: kWhite, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            DeliveryOptions(),
            const SizedBox(height: 20),
            CheckoutSummary(),
          ],
        ),
      ),
    );
  }
}

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
                  Row(
                    children: [
                      const Icon(Icons.star, color: kstarYellow, size: 10),
                      const SizedBox(width: 3),
                      const ReusableText(
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
