import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button action
          },
        ),
        title: Text('Checkout'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         const   Text(
              'Delivery Address & Time',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            const SizedBox(height: 10),
            Container(
              height: 40, // Adjusted height
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildCategoryItem('Marina Twin Tower, Lusail', Colors.orange, Icons.location_on, true),
                  buildCategoryItem('Marina Twin Tower, Lusail', Colors.grey, Icons.location_on, false),
                  // Add more address tiles as needed
                ],
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton.icon(
                onPressed: () {
                  // Handle add new address action
                },
                icon: Icon(Icons.add_circle_rounded,color: kOrangeColor,),
                label: Text('Add new address',style: TextStyle(color: kOrangeColor),),
              ),
            ),
            const SizedBox(height: 16),
         const   Text(
              'Payment method',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            const SizedBox(height: 8),
      Container(

  child: DropdownButtonFormField<String>(
    value: 'Debit card ending ***808',
    items: const [
      DropdownMenuItem(
        value: 'Debit card ending ***808',
        child: Text('Debit card ending ***808'),
      ),
      // Add more payment methods here
    ],
    onChanged: (value) {
      // Handle payment method change
    },
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.credit_score_outlined),
      border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), 
      ), // Optional border
    ),
  ),
),

            const SizedBox(height: 16),
         const   Text(
              'Add delivery note',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
          TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Add note here...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text('42 QR'),
              ],
            ), SizedBox(height: 10),
          const  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('10 QR'),
              ],
            ),
            Divider(),
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '52 QR',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle confirm order action
              },
              child: Center(
                child: Text('Confirm Order'),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryItem(String categoryName, Color color, IconData icon, bool isSelected, {double width = 210}) {
    return Container(
      width: width,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ? kOrangeColor : Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected ?kOrangeColor : Colors.grey,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              categoryName,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
