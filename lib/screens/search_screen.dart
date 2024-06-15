import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/build_category_item.dart';
import 'package:food_delivery_app/screens/search_bar.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/food_item_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double horizontalPadding = screenWidth * 0.02;
    final double verticalPadding = screenHeight * 0.02; 
    final double searchBarHeight = screenHeight * 0.15; 
    final double categoryItemHeight = screenHeight * 0.05; 

    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
        child: Column(
          children: [
            SizedBox(
              height: searchBarHeight,
              child: const Searchbar(),
            ),
            SizedBox(
              height: categoryItemHeight,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryItem(label: 'All', color: kColorgrey, width: 70),
                  CategoryItem(label: 'Go crispy original', color: kOrangeColor),
                  CategoryItem(label: 'Value meal', color: kColorgrey),
                  CategoryItem(label: 'Extreme meal', color: kColorgrey),
                  CategoryItem(label: 'Bucket meal', color: kColorgrey),
                  CategoryItem(label: 'Combos', color: kColorgrey),
                  CategoryItem(label: 'Sandwich', color: kColorgrey),
                  CategoryItem(label: 'Kids meal', color: kColorgrey),
                  CategoryItem(label: 'Salad', color: kColorgrey),
                  CategoryItem(label: 'Sides & Condiments', color: kColorgrey),
                  CategoryItem(label: 'Sauces', color: kColorgrey),
                  CategoryItem(label: 'Dessert', color: kColorgrey),
                  CategoryItem(label: 'Beverages', color: kColorgrey),
                ],
              ),
            ),
            SizedBox(height: verticalPadding),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(horizontalPadding),
                children: const [
                  FoodItemCard(
                    imageUrl: 'assets/images/rowPic.jpg',
                    title: 'Tornado Fries',
                    rating: 4.5,
                    description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                    price: 'QR 23',
                  ),
                  SizedBox(height: kCustomSizedBoxHeightE),
                  FoodItemCard(
                    imageUrl: 'assets/images/rowPic1.jpg',
                    title: 'Crispy Chicken',
                    rating: 4.0,
                    description: 'Crispy fried chicken served with a tangy sauce and a side of coleslaw',
                    price: '30 QR',
                  ),
                  SizedBox(height: kCustomSizedBoxHeightE),
                  FoodItemCard(
                    imageUrl: 'assets/images/pic3.jpg',
                    title: 'Tornado Fries',
                    rating: 4.5,
                    description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                    price: '23 QR',
                  ),
                  SizedBox(height: kCustomSizedBoxHeightE),
                  FoodItemCard(
                    imageUrl: 'assets/images/pic.jpg',
                    title: 'Tornado Fries',
                    rating: 4.5,
                    description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                    price: '23 QR',
                  ),
                  SizedBox(height: kCustomSizedBoxHeightE),
                  FoodItemCard(
                    imageUrl: 'assets/images/Main_image.png',
                    title: 'Tornado Fries',
                    rating: 4.5,
                    description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                    price: '23 QR',
                  ),
                  SizedBox(height: kCustomSizedBoxHeightE),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
