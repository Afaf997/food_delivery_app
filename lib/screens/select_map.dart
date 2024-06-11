import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/custom_bottom_navigation.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_replasment_navigations.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';


class SelectLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map.png'), 
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:const EdgeInsets.only(top: 50.0, left: 16.0),
                child: IconButton(
                  icon:const Icon(Icons.arrow_circle_left_outlined),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 240,
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                const  ReusableText(text: 
                    'Select current location',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  const SizedBox(height: 16),
                  Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: kGrayLogo, 
                      borderRadius: BorderRadius.circular(8.0), 
                    ),
                    child:const Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.black),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Al wakrah 31 الوكرة',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(height: 16),
                    ReusableNavigationButton(
                navigationTarget: MainScreen(),
                buttonText: 'Continue',
                buttonColor:kOrangeColor,
                textColor: Colors.white,
                fontSize: 16,
              ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
