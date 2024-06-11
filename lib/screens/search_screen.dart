import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/food_item_card.dart';
import 'package:food_delivery_app/widget/reusable_okay_button.dart';

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
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: kSEARCHColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search,
                            color: kblack, size: kIconSize),
                        const SizedBox(width: 10),
                        Text(
                          'What are you looking for?',
                          style: kSearchHintTextStyle.copyWith(
                              color: kTextHintColor),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  backgroundColor: kWhite,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    
                                    width: MediaQuery.of(context).size.width * 0.9, // Adjusted width to 90%
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Transform.rotate(
                                              angle: 15,
                                              child: const Icon(
                                                Icons.add_circle_rounded,
                                                size: 18,
                                                color: kredcolor,
                                              ),
                                            ),
                                            const Text(
                                              'Filter',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text(
                                                'Reset',
                                                style: TextStyle(color: kredcolor,fontSize: 14),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('Price',style: TextStyle(fontSize: 14),),
                                        ),
                                        const Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('QR 50',style: TextStyle(fontSize: 14),),
                                            Text('QR 100',style: TextStyle(fontSize: 14),),
                                          ],
                                        ),
                                        Slider(
                                          value: 50,
                                          min: 0,
                                          max: 80,
                                          activeColor: kOrangeColor,
                                          onChanged: (value) {},
                                        ),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('Rating'),
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: List.generate(5, (index) {
                                            return const Icon(
                                              Icons.star,
                                              color: korgGrey,
                                            );
                                          }),
                                        ),
                                        const SizedBox(height: 10),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('Category'),
                                        ),
                                        SizedBox(height: 7,),
                                        Wrap(
                                          spacing: 3.0,
                                          runSpacing: 5.0,
                                          children: [
                                            buildCategoryItem('Go crispy original', kOrangeColor),
                                            buildCategoryItem('Value meal', kColorgrey),
                                            buildCategoryItem('Extreme meal', kColorgrey),
                                            buildCategoryItem('Bucket meal', kColorgrey),
                                            buildCategoryItem('Combos', kColorgrey),
                                            buildCategoryItem('Sandwich', kColorgrey),
                                            buildCategoryItem('Salad', kColorgrey),
                                            buildCategoryItem('Sauces', kColorgrey),
                                            buildCategoryItem('Kids meal', kColorgrey),
                                            buildCategoryItem('Dessert', kColorgrey),
                                            buildCategoryItem('Sides & Condiments', kColorgrey),
                                            buildCategoryItem('Beverages', kColorgrey),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        const ReusableOkeyButton(
                                          navigationTarget: SearchScreen(),
                                          buttonText: 'Apply',
                                          buttonColor: kOrangeColor,
                                          textColor: kWhite,
                                          fontSize: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Transform.rotate(
                            angle: 3.141592653589793 / 2,
                            child: const Icon(
                              Icons.candlestick_chart_outlined,
                              size: kIconSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Transform.rotate(
                  angle: 15,
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
              height: 37,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildCategoryItem('All', kColorgrey, 70),
                  buildCategoryItem('Go crispy original', kOrangeColor),
                  buildCategoryItem('Value meal', kColorgrey),
                  buildCategoryItem('Extreme meal', kColorgrey),
                  buildCategoryItem('Bucket meal', kColorgrey),
                  buildCategoryItem('Combos', kColorgrey),
                  buildCategoryItem('Sandwich', kColorgrey),
                  buildCategoryItem('Kids meal', kColorgrey),
                  buildCategoryItem('Salad', kColorgrey),
                  buildCategoryItem('Sides & Condiments', kColorgrey),
                  buildCategoryItem('Sauces', kColorgrey),
                  buildCategoryItem('Dessert', kColorgrey),
                  buildCategoryItem('Beverages', kColorgrey),
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
                  description:
                      'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: 'QR 23',
                ),
                SizedBox(height: kCustomSizedBoxHeightE),
                FoodItemCard(
                  imageUrl: 'assets/images/rowPic1.jpg',
                  title: 'Crispy Chicken',
                  rating: 4.0,
                  description:
                      'Crispy fried chicken served with a tangy sauce and a side of coleslaw',
                  price: '30 QR',
                ),
                SizedBox(height: kCustomSizedBoxHeightE),
                FoodItemCard(
                  imageUrl: 'assets/images/pic3.jpg',
                  title: 'Tornado Fries',
                  rating: 4.5,
                  description:
                      'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: '23 QR',
                ),
                SizedBox(height: kCustomSizedBoxHeightE),
                FoodItemCard(
                  imageUrl: 'assets/images/pic.jpg',
                  title: 'Tornado Fries',
                  rating: 4.5,
                  description:
                      'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: '23 QR',
                ),
                SizedBox(height: kCustomSizedBoxHeightE),
                FoodItemCard(
                  imageUrl: 'assets/images/Main_image.png',
                  title: 'Tornado Fries',
                  rating: 4.5,
                  description:
                      'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
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

  Widget buildCategoryItem(String label, Color color, [double width = 100]) {
    return Container(
      height: 33,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: klgreyColor),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color == kOrangeColor ? kWhite : kblack,
          fontWeight: FontWeight.w300,
          fontSize: 14
        ),
      ),
    );
  }
}
