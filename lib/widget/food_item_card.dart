import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class FoodItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final String description;
  final String price;

  const FoodItemCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(250, 250, 250, 252),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 136,
                  height: 108,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imageUrl),
                    ),
                  ),
                ),
              const  SizedBox(width: kCustomSizedBoxWidthA),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            text: title,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        const Padding(
                           padding:  EdgeInsets.only(right: 13),
                           child:  Icon(Icons.favorite, color:Color.fromARGB(255, 228, 225, 225),size: 13,),
                         ),
                        ],
                      ),
                      Row(
                        children: [
                         const Icon(Icons.star, color: Colors.yellow,size: 12,),
                          ReusableText(text: '$rating', fontSize: 12,),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: ReusableText(text: description, fontSize: 9),
                      ),
                      ReusableText(text: price, fontSize: 13, color: kOrangeColor),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}