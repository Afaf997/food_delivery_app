import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/search_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildTopContainer(BuildContext context) {
  return Container(
    height: 177,
    decoration: const BoxDecoration(
      color: kOrangeColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24.0),
        bottomRight: Radius.circular(24.0),
      ),
    ),
    padding: const EdgeInsets.only(right: 20, left: 20,top: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current Location',
                  style: kLocationTextStyle.copyWith(color: kWhite),
                ),
               const Row(
                  children: [
                    const Icon(
              Icons.location_on,
              color: kWhite,
              size: kIconSize,
            ),
                    Text(
                      'Marina Twin Tower, Lusail',
                      style: const TextStyle(
                        color: kWhite,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Image.asset('assets/images/logo.png',width: 50.0,
  height: 50.0,)
          ],
        ),
        const SizedBox(height: 25),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchScreen()),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: kTextHintColor, size: kIconSize),
                const SizedBox(width: 10),
                Text(
                  'What are you looking for?',
                  style: kSearchHintTextStyle.copyWith(color: kTextHintColor),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
