import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/build_menu_row.dart';
import 'package:food_delivery_app/functions/custom_bottom_navigation.dart';
import 'package:food_delivery_app/functions/locate_container.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_richtext.dart';
import 'package:food_delivery_app/widget/row_image.dart';
import 'package:food_delivery_app/widget/single_container.dart';
import 'package:food_delivery_app/widget/title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  void onItemTapped(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopContainer(),
            const SizedBox(height: 10),
            _buildImageContainer(context),
            const SizedBox(height: 10),
            buildTitleRow('Menu'),
            const SizedBox(height: 10),
            buildMenuRow(context),
            const SizedBox(height: 10),
            buildTitleRow('Best Selling', actionText: 'See All'),
            const SizedBox(height: 20),
            buildImageRow(),
            const SizedBox(height: 10),
             buildTitleRow('Top Deals'),
            const SizedBox(height: 10),
            buildImageContainer(
              MenuItem(
                imagePath: 'assets/images/pic.jpg',
                itemName: 'Tomado Fries',
                rating: '4.5',
                description: 'Shrimp burger, French Fries, Drink',
                qrCode: 'QR 23',
              ),
            ),
            SizedBox(height: 10),
            buildImageContainer(
              MenuItem(
                imagePath: 'assets/images/rowPic1.jpg',
                itemName: 'Crispy Fried Chicken',
                rating: '4.5',
                description: '12 pcs chicken, French Fries, Drink',
                qrCode: 'QR 43',
              ),
            ),
             SizedBox(height: 10),
            buildImageContainer(
              MenuItem(
                imagePath: 'assets/images/pic3.jpg',
                itemName: 'Crispy Fried Chicken',
                rating: '4.5',
                description: '12 pcs chicken, French Fries, Drink',
                qrCode: 'QR 43',
              ),
            ),
            SizedBox(height: 10,),
            buildLocateContainer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selected,
        onItemTapped: onItemTapped,
      ),
    );
  }

  Widget _buildTopContainer() {
    return Container(
      decoration: const BoxDecoration(
        color: kOrangeColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      padding: const EdgeInsets.only(top: 60, bottom: 20, right: 20, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current Location',
            style: kLocationTextStyle.copyWith(color: kWhite),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: kWhite,
                size: kIconSize,
              ),
              const Text(
                'Marina Twin Tower, Lusail',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/images/logo.png',
                width: 40.0,
                height: 40.0,
              ),
            ],
          ),
          const SizedBox(height: 18.0),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What are you looking for?',
                hintStyle: kSearchHintTextStyle.copyWith(color: kTextHintColor),
                filled: true,
                fillColor: kWhite,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                prefixIcon:
                    Icon(Icons.search, color: kTextHintColor, size: kIconSize),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 17),
      decoration: kImageBoxDecoration,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            child: Image.asset(
              'assets/images/firstImage.jpg',
              width: MediaQuery.of(context).size.width * kImageWidthRatio,
              height: MediaQuery.of(context).size.height * kImageHeightRatio,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 30,
            left: 40,
            child: buildCircularBadge('25', 'QR', Colors.green),
          ),
          Positioned(
            top: 50,
            left: 220,
            child: buildTextSection('Chicken\nBurger', kWhite, 30, FontWeight.w700),
          ),
          Positioned(
            top: 70,
            left: 250,
            child: Transform.rotate(
              angle: -0.2,
              child: buildBuyGetBadge('BUY1', 'GET1', kWhite),
            ),
          ),
        ],
      ),
    );
  }


}
