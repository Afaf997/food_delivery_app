import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/error_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/custom_appbar.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  Widget buildStep(BuildContext context, String label, String dateTime, String iconPath, bool isActive, {bool navigateToErrorOrder = false}) {
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
              width: 61,
              height: 58,
              decoration: BoxDecoration(
                color:kColorgrey,
                border: Border.all(color: isActive ? kOrangeColor : klgreyColor, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                iconPath,
                color: isActive ? kOrangeColor : Colors.grey,
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
                    color: isActive ? kOrangeColor : kIncreasedColor,
                  ),
                ),
                Text(
                  dateTime,
                  style: TextStyle(
                    color: kIncreasedColor,
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
      backgroundColor: kWhite,
       appBar: CustomAppBar(
        title: 'Track Order',
        onLeadingPressed: () {
          Navigator.pop(context);
        },
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
                    const Text(
                      'Be prepared! Your food is arriving any moment now',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
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
              ),SizedBox(height: 10,),
              buildStep(context, 'Order Placed', '14 May 2024 · 10:24 am', 'assets/icons/icon1.png', true, navigateToErrorOrder: true),
              const SizedBox(height: 15),
              buildStep(context, 'Confirmed', '14 May 2024 · 10:24 am', 'assets/icons/icon2.png', false),
              const SizedBox(height: 15),
              buildStep(context, 'Cooking', '14 May 2024 · 10:24 am', 'assets/icons/icon3.png', false),
              const SizedBox(height: 15),
              buildStep(context, 'Preparing', '14 May 2024 · 10:24 am', 'assets/icons/icon4.png', false),
              const SizedBox(height: 15),
              buildStep(context, 'Order is on the way', '14 May 2024 · 10:24 am', 'assets/icons/icon5.png', false),
              const SizedBox(height: 15),
              buildStep(context, 'Delivery Completed', '14 May 2024 · 10:24 am', 'assets/icons/icon6.png', false),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
