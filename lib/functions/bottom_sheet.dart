import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/costom_container_widget.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/addons.dart';
import 'package:food_delivery_app/widget/check_box_reusable.dart';
import 'package:food_delivery_app/widget/reusable_heading.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

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
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/rowPic.jpg'),
                    ),
                  ),
                ),
                const SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            text: 'Tornado Fries',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 228, 225, 225),
                            size: 13,
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          ReusableText(
                            text: '45',
                            fontSize: 16,
                          ),
                        ],
                      ),
                      const ReusableText(
                        text:
                            'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                        fontSize: 9,
                      ),
                      const ReusableText(
                        text: 'QR 23',
                        fontSize: 20,
                        color: kOrangeColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: kCustomSizedBoxHeightA),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ReusableText(
                  text: 'Quantity',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.remove,
                          size: 14,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: kCustomSizedBoxWidth),
                      const ReusableText(
                        text: '1',
                        fontSize: 15,
                      ),
                      const SizedBox(width: kCustomSizedBoxWidth),
                      IconButton(
                        icon: const Icon(
                          Icons.add,
                          size: 14,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: kCustomSizedBoxHeight),
            buildHeading('Meal Size'),
            const SizedBox(height: kCustomSizedBoxHeightE),
            buildCheckbox('Go Medium (+3 QR)', true),
            const SizedBox(height: kCustomSizedBoxHeightF),
            buildCheckbox('Go Medium (+3 QR)', false),
            const SizedBox(height: 15),
            buildHeading('Your choices of fries'),
            const SizedBox(height: kCustomSizedBoxHeightE),
            buildCheckbox('Go Medium (+3 QR)', true),
            const SizedBox(height: kCustomSizedBoxHeightF),
            buildCheckbox('Go Medium (+3 QR)', false),
            const SizedBox(height: kCustomSizedBoxHeightG),
            buildHeading('Addons'),
            const SizedBox(height: kCustomSizedBoxHeightF),
            Expanded(
              child: ListView(
                children: const [
                  AddOnItem(
                    image: 'assets/images/adon3.png',
                    title: 'Kinza Lemon (250 ml)',
                    subtitle: '2QR',
                    initialCount: 2,
                     overlayImage: 'assets/images/adon2.png',
                  ),
                  AddOnItem(
                    image: 'assets/images/adon3.png',
                    title: 'Kinza Cola (250 ml)',
                    subtitle: '2QR', overlayImage: 'assets/images/adon1.png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: kCustomSizedBoxHeightA),
            const CustomContainerWidget(),
          ],
        ),
      );
    },
  );
}








