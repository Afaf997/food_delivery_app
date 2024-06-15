import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';
import 'package:food_delivery_app/widget/single_container.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kWhite,
      appBar: AppBar(
        backgroundColor:kWhite,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title:const ReusableText(
          text: 'My Favourite',
          fontWeight: FontWeight.bold,
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
