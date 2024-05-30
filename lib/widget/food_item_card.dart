import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class FoodItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int rating;
  final String description;
  final String price;

  const FoodItemCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
            SizedBox(width: 13),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                     const  Icon(Icons.star, color: Colors.yellow),
                      Text(
                        '$rating',
                        style:const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      description,
                      style:const TextStyle(fontSize: 9),
                    ),
                  ),
                  Text(
                    price,
                    style:const TextStyle(fontSize: 13, color:kOrangeColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
