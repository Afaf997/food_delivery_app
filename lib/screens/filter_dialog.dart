import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/build_category_item.dart';
import 'package:food_delivery_app/screens/search_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_okay_button.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 350,
        height: 544,
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
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
                      style: TextStyle(color: kredcolor, fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Price', style: TextStyle(fontSize: 14)),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('QR 50', style: TextStyle(fontSize: 14)),
                  Text('QR 100', style: TextStyle(fontSize: 14)),
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
              const SizedBox(height: 10),
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
              const SizedBox(height: 7),
            const Wrap(
                spacing: 3.0,
                runSpacing: 5.0,
                children: [
                  CategoryItem(label: 'Go crispy original', color: kOrangeColor),
                  CategoryItem(label: 'Value meal', color: kColorgrey),
                  CategoryItem(label: 'Extreme meal', color: kColorgrey),
                  CategoryItem(label: 'Bucket meal', color: kColorgrey),
                  CategoryItem(label: 'Combos', color: kColorgrey),
                  CategoryItem(label: 'Sandwich', color: kColorgrey),
                  CategoryItem(label: 'Salad', color: kColorgrey),
                  CategoryItem(label: 'Sauces', color: kColorgrey),
                  CategoryItem(label: 'Kids meal', color: kColorgrey),
                  CategoryItem(label: 'Dessert', color: kColorgrey),
                  CategoryItem(label: 'Sides & Condiments', color: kColorgrey),
                  CategoryItem(label: 'Beverages', color: kColorgrey),
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
      ),
    );
  }
}
