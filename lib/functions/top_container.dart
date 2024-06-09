import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/search_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildTopContainer(BuildContext context) {
  return Center(
    child: Container(
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
              const Spacer(),
              Image.asset(
                'assets/images/logo.png',
                width: 40.0,
                height: 40.0,
              ),
            ],
          ),
          const SizedBox(height: kCustomSizedBoxHeightC),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
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
          ),
        ],
      ),
    ),
  );
}
