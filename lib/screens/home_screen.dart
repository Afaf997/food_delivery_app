import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/build_menu_row.dart';
import 'package:food_delivery_app/functions/reusable_richtext.dart';
import 'package:food_delivery_app/utils/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTopContainer(),
          const SizedBox(height: 10),
          _buildImageContainer(context),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: kblack,
              ),
            ),
          ),
          // const SizedBox(height: 10),
          buildMenuRow(context),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: kOrangeColor,
        backgroundColor: kWhite,
        currentIndex: 0,
        onTap: (int index) {
          // Handle navigation bar item tap
          // Typically you would navigate to a new screen based on index
        },
      ),
    );
  }

  Widget _buildTopContainer() {
    return Container(
      decoration: BoxDecoration(
        color: kOrangeColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      height: kContainerHeight,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current Location',
            style: kLocationTextStyle,
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
          SizedBox(height: 18.0),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What you are looking for?',
                hintStyle: kSearchHintTextStyle,
                filled: true,
                fillColor: kWhite,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                prefixIcon: Icon(Icons.search, color: kTextHintColor, size: kIconSize),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
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
