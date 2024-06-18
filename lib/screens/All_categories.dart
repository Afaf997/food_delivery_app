import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/build_category_items.dart';
import 'package:food_delivery_app/widget/custom_appbar.dart';
import 'package:food_delivery_app/widget/food_item_card.dart';
import 'package:food_delivery_app/utils/constant.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
       appBar: CustomAppBar(
        title: 'All Categories',
        onLeadingPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 33, 
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding:const EdgeInsets.symmetric(horizontal: 10),
              children: [
                buildCategoryItem('All', kColorgrey,70),
                buildCategoryItem('Go Crispy Original', kOrangeColor),
                buildCategoryItem('extreme meal', kColorgrey),
                buildCategoryItem('GO crispy Original', kColorgrey),
                buildCategoryItem('GO crispy Original', kColorgrey),
              ],
            ),
          ),
         const SizedBox(height:25,),
          Expanded(
            child: ListView(
              padding:const EdgeInsets.all(10),
              children: const [
                FoodItemCard(
                  imageUrl: 'assets/images/rowPic.jpg',
                  title: 'Tornado Fries',
                  rating: 4.5,
                  description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: 'QR 23',
                ),SizedBox(height:kCustomSizedBoxHeightE,),
                FoodItemCard(
                  imageUrl: 'assets/images/rowPic1.jpg',
                  title: 'Crispy Chicken',
                  rating: 4.0,
                  description: 'Crispy fried chicken served with a tangy sauce and a side of coleslaw',
                  price: '30 QR',
                ),SizedBox(height:kCustomSizedBoxHeightE,),FoodItemCard(
                  imageUrl: 'assets/images/pic3.jpg',
                  title: 'Tornado Fries',
                  rating: 4.5,
                  description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: '23 QR',
                ),SizedBox(height:kCustomSizedBoxHeightE,),FoodItemCard(
                  imageUrl: 'assets/images/pic.jpg',
                  title: 'Tornado Fries',
                  rating: 4.5,
                  description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: '23 QR',
                ),SizedBox(height:kCustomSizedBoxHeightE,),FoodItemCard(
                  imageUrl: 'assets/images/Main_image.png',
                  title: 'Tornado Fries',
                  rating: 4.5,
                  description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: '23 QR',
                ),SizedBox(height:kCustomSizedBoxHeightE,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
