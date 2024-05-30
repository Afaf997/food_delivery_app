import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/costom_container_widget.dart';
import 'package:food_delivery_app/widget/check_box_reusable.dart';
import 'package:food_delivery_app/widget/reusable_heading.dart';
import 'package:food_delivery_app/widget/round_check.dart';

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * 0.8,
        width: double.infinity,
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
                      image: AssetImage('assets/images/rowPic.jpg'),
                    ),
                  ),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tornado Fries',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Text(
                            '45',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                      Text(
                        'QR 23',
                        style: TextStyle(fontSize: 13, color: Colors.orange),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Adjust spacing as needed
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quantity', // Replace with your actual text
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40, // Adjust height as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[300], // Grey background color
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                        },
                      ),
                      SizedBox(width: 8), // Adjust spacing between icon and number
                      Text(
                        '1',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 8), // Adjust spacing between number and icon
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          // Add functionality here if needed
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
             buildHeading('Meal Size'),
             SizedBox(height: 5,),
             buildCheckbox('Go Medium (+3 QR)',true),
             SizedBox(height: 7,),
             buildCheckbox('Go Medium (+3 QR)',false),
             SizedBox(height: 15,),
             buildHeading('Your choices of fries'),
                SizedBox(height: 5,),
             buildCheckbox('Go Medium (+3 QR)',true),
             SizedBox(height: 7,),
             buildCheckbox('Go Medium (+3 QR)',false),
             SizedBox(height: 15,),
              buildHeading('Your choices of drink'),
            SizedBox(height: 7,),
             roundCheckbox('Go Medium (+3 QR)',false),
             SizedBox(height: 7,),
             roundCheckbox('Go Medium (+3 QR)',false),
             SizedBox(height: 7,),
             roundCheckbox('Go Medium (+3 QR)',true),
             SizedBox(height: 20,),
             CustomContainerWidget(),
          ],
          
        ),

        
      );
    },
  );
}
