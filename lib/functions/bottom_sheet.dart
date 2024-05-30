import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/costom_container_widget.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/check_box_reusable.dart';
import 'package:food_delivery_app/widget/reusable_heading.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';
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
                    image:const DecorationImage(
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
                     const ReusableText(text: 'Tornado Fries',
                      fontSize: 15,fontWeight: FontWeight.bold,),
                     const Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                      ReusableText(text: '45',
                      fontSize: 16,),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                      child: const ReusableText(text: 'French Fries Covered With Cheese Sauce And Bbq Sauce With Chicken Pieces And Jalapeno And Mix Herbs',
                      fontSize: 9,),
                      ),
                     const ReusableText(text: 'QR 23',
                      fontSize: 23,color: kOrangeColor,)
              
                    ],
                  ),
                ),
              ],
            ),
           const SizedBox(height: kCustomSizedBoxHeightA), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const ReusableText(text: 'Quantity',fontSize: 16, fontWeight: FontWeight.bold,),
                Container(
                  height: 40, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[300], 
                  ),
                  padding:const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon:const Icon(Icons.remove),
                        onPressed: () {
                        },
                      ),
                     const SizedBox(width: kSizedBoxWidth ), 
                      const ReusableText(text: '1',fontSize: 16,),
                     const SizedBox(width: kSizedBoxWidth ),
                      IconButton(
                        icon:const Icon(Icons.add),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
           const SizedBox(height: kCustomSizedBoxHeight,),
             buildHeading('Meal Size'),
            const SizedBox(height:  kCustomSizedBoxHeightE,),
             buildCheckbox('Go Medium (+3 QR)',true),
            const SizedBox(height: kCustomSizedBoxHeightF,),
             buildCheckbox('Go Medium (+3 QR)',false),
            const SizedBox(height: 15,),
             buildHeading('Your choices of fries'),
             const   SizedBox(height:  kCustomSizedBoxHeightE,),
             buildCheckbox('Go Medium (+3 QR)',true),
            const SizedBox(height: kCustomSizedBoxHeightF,),
             buildCheckbox('Go Medium (+3 QR)',false),
            const SizedBox(height: kCustomSizedBoxHeightG ,),
              buildHeading('Your choices of drink'),
           const SizedBox(height: kCustomSizedBoxHeightF,),
             roundCheckbox('Go Medium (+3 QR)',false),
            const SizedBox(height: kCustomSizedBoxHeightF,),
             roundCheckbox('Go Medium (+3 QR)',false),
            const SizedBox(height: kCustomSizedBoxHeightF,),
             roundCheckbox('Go Medium (+3 QR)',true),
            const SizedBox(height: kCustomSizedBoxHeightA,),
            const CustomContainerWidget(),
          ],
          
        ),

        
      );
    },
  );
}
