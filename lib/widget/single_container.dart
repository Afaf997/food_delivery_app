import 'package:flutter/material.dart';
class MenuItem {
  final String imagePath;
  final String itemName;
  final String rating;
  final String description;
  final String qrCode;

  MenuItem({
    required this.imagePath,
    required this.itemName,
    required this.rating,
    required this.description,
    required this.qrCode,
  });
}

Widget buildImageContainer(MenuItem menuItem) {
  
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: buildItem(menuItem),
    );
  }

  Widget buildItem(MenuItem menuItem) {
    return Container(
      width: 354,
      height: 191,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              menuItem.imagePath,
              fit: BoxFit.cover,
              height: 144,
              width: double.infinity,
            ),
          ),
          Positioned(
            bottom: 7,
            left: 8,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          menuItem.itemName,
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      menuItem.qrCode,
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color.fromARGB(255, 235, 217, 56),
                    ),
                    Text(' ${menuItem.rating}', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 4),
                    Text(menuItem.description, style: TextStyle(fontSize: 8)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
