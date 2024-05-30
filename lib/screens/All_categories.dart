import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home_screen.dart';
import 'package:food_delivery_app/widget/build_category_items.dart';
import 'package:food_delivery_app/widget/food_item_card.dart';
import 'package:food_delivery_app/utils/constant.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  icon:const Icon(Icons.arrow_back_ios),
                ),
                const SizedBox(width: 60), // Adjust spacing between icon and text
                Text(
                  'All Categories',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
         const SizedBox(height: 10),
          SizedBox(
            height: 50, 
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10),
              children: [
                buildCategoryItem('All', kTextgreyColor),
                buildCategoryItem('GO crispy Original', kOrangeColor),
                buildCategoryItem('extreme meal', kTextgreyColor),
                buildCategoryItem('GO crispy Original', kOrangeColor),
                buildCategoryItem('GO crispy Original', kTextgreyColor),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding:const EdgeInsets.all(10),
              children: const [
                FoodItemCard(
                  imageUrl: 'assets/images/rowPic.jpg',
                  title: 'Tornado Fries',
                  rating: 45,
                  description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: 'QR 23',
                ),SizedBox(height: 10,),
                FoodItemCard(
                  imageUrl: 'assets/images/rowPic1.jpg',
                  title: 'Crispy Chicken',
                  rating: 40,
                  description: 'Crispy fried chicken served with a tangy sauce and a side of coleslaw',
                  price: 'QR 30',
                ),SizedBox(height: 10,),FoodItemCard(
                  imageUrl: 'assets/images/pic3.jpg',
                  title: 'Tornado Fries',
                  rating: 45,
                  description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: 'QR 23',
                ),SizedBox(height: 10,),FoodItemCard(
                  imageUrl: 'assets/images/pic.jpg',
                  title: 'Tornado Fries',
                  rating: 45,
                  description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: 'QR 23',
                ),SizedBox(height: 10,),FoodItemCard(
                  imageUrl: 'assets/images/firstImage.jpg',
                  title: 'Tornado Fries',
                  rating: 45,
                  description: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                  price: 'QR 23',
                ),SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
