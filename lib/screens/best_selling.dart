import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';
import 'package:food_delivery_app/widget/single_container.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        toolbarHeight: 80,
        title: ReusableText(
          text: 'Best selling',
          fontWeight: FontWeight.w900,
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildImageContainer(
              context,
              MenuItem(
                imagePath: 'assets/images/pic.jpg',
                itemName: 'Tomado Fries',
                rating: '4.5',
                description: 'Shrimp burger, French Fries, Drink',
                qrCode: 'QR 23',
              ),
            ),
            SizedBox(height: kCustomSizedBoxHeight),
            buildImageContainer(
              context,
              MenuItem(
                imagePath: 'assets/images/rowPic1.jpg',
                itemName: 'Crispy Fried Chicken',
                rating: '4.5',
                description: '12 pcs chicken, French Fries, Drink',
                qrCode: 'QR 43',
              ),
            ),
            SizedBox(height: kCustomSizedBoxHeight),
            buildImageContainer(
              context,
              MenuItem(
                imagePath: 'assets/images/pic3.jpg',
                itemName: 'Crispy Fried Chicken',
                rating: '4.5',
                description: '12 pcs chicken, French Fries, Drink',
                qrCode: 'QR 43',
              ),
            ),
          ],
        ),
      ),
    );
  }
}