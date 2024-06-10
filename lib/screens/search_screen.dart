import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/build_category_items.dart';
import 'package:food_delivery_app/widget/food_item_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static const double kIconSize = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 40, top: 50, left: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: klgreyColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: kblack, size: kIconSize),
                        const SizedBox(width: 10),
                        Text(
                          'What are you looking for?',
                          style: kSearchHintTextStyle.copyWith(color: kTextHintColor),
                        ),
                        const Spacer(),
                        Transform.rotate(
                          angle: 3.141592653589793 / 2, // Rotation angle in radians (π/2 radians = 90 degrees)
                          child: const Icon(
                            Icons.candlestick_chart_outlined,
                            size: kIconSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Transform.rotate(
                  angle: 15, // Rotation angle in radians
                  child: const Icon(
                    Icons.add_circle_rounded,
                    size: 18,
                    color: kredcolor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: 33,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildCategoryItem('All', kTextgreyColor, 70),
                  buildCategoryItem('Go Crispy Original', kOrangeColor),
                  buildCategoryItem('Extreme Meal', kTextgreyColor),
                  buildCategoryItem('GO Crispy Original', kTextgreyColor),
                  buildCategoryItem('GO Crispy Original', kTextgreyColor),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
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
    );
  }
}
