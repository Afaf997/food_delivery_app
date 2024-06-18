import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/order_confirmation.dart';
import 'package:food_delivery_app/screens/address_screen.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/build_category.dart';
import 'package:food_delivery_app/widget/custom_appbar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
         appBar: CustomAppBar(
        title: 'Checkout',
        onLeadingPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delivery Address & Time',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
              height: 40, // Adjusted height
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildCategoryItems(
                      'Marina Twin Tower, Lusail', kOrangeColor, Icons.location_on, true),
                  buildCategoryItems(
                      'Marina Twin Tower, Lusail', kblack, Icons.location_on, false),
                  // Add more address tiles as needed
                ],
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddressForm()));
                },
                icon: const Icon(
                  Icons.add_circle_rounded,
                  color: kOrangeColor,
                ),
                label: const Text(
                  'Add new address',
                  style: TextStyle(color: kOrangeColor, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Payment method',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              dropdownColor:kColorgrey ,
              value: 'Debit card ',
              items: const [
                DropdownMenuItem(
                  value: 'Debit card ',
                  child: Text('Debit card'),
                ),
                DropdownMenuItem(
                  value: 'Credit card',
                  child: Text('Credit card '),
                ),
                DropdownMenuItem(
                  value: 'Cash on Delivery',
                  child: Text('Cash on Delivery'),
                ),
              ],
              onChanged: (value) {
                // Handle payment method change
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: kColorgrey,
                prefixIcon: Icon(Icons.credit_score_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Add delivery note',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                filled: true,
                fillColor: kColorgrey,
                hintText: 'Add note here...',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '42 QR',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery fee',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '10 QR',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '52 QR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kOrangeColor,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  showDeliveryFeeDialog(context);
                },
                child: const Text(
                  "Confirm Order",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget buildCategoryItem(
  //     String categoryName, Color color, IconData icon, bool isSelected,
  //     {double width = 210}) {
  //   return Container(
  //     width: width,
  //     margin: EdgeInsets.only(right: 8),
  //     decoration: BoxDecoration(
  //       color: kColorgrey,
  //       border: Border.all(color: isSelected ? kOrangeColor : klgreyColor),
  //       borderRadius: BorderRadius.circular(12),
  //     ),
  //     child: Row(
  //       children: [
  //         Icon(
  //           icon,
  //           color: isSelected ? kOrangeColor : Colors.grey,
  //         ),
  //         const SizedBox(width: 8),
  //         Expanded(
  //           child: Text(
  //             categoryName,
  //             overflow: TextOverflow.ellipsis,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
