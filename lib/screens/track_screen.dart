import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/error_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  Widget buildStep(BuildContext context, String label, String dateTime, IconData icon, bool isActive, {bool navigateToErrorOrder = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          if (navigateToErrorOrder) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OrderError()),
            );
          }
        },
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: isActive ? kOrangeColor : Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: isActive ? Colors.white : Colors.grey,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: isActive ? kOrangeColor : Colors.grey,
                  ),
                ),
                Text(
                  dateTime,
                  style: TextStyle(
                    color: isActive ? kOrangeColor : Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Track Order',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/delivery-man .png',
                      height: 100,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Be prepared! Your food is arriving any moment now',
                      style: TextStyle(color: Colors.grey,fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '0-5 min',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kOrangeColor,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const Text(
                'Your order #33251',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              buildStep(context, 'Order Placed', '14 May 2024 · 10:24 am', Icons.check_box, true, navigateToErrorOrder: true),
              const SizedBox(height: 15),
              buildStep(context, 'Confirmed', '14 May 2024 · 10:24 am', Icons.check_box, false),
              const SizedBox(height: 15),
              buildStep(context, 'Cooking', '14 May 2024 · 10:24 am', Icons.kitchen, false),
              const SizedBox(height: 15),
              buildStep(context, 'Preparing', '14 May 2024 · 10:24 am', Icons.restaurant, false),
              const SizedBox(height: 15),
              buildStep(context, 'Order is on the way', '14 May 2024 · 10:24 am', Icons.delivery_dining, false),
              const SizedBox(height: 15),
              buildStep(context, 'Delivery Completed', '14 May 2024 · 10:24 am', Icons.check_circle, false),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
