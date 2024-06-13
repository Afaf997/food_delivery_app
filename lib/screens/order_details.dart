import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
         backgroundColor: kWhite,
        toolbarHeight: 80,
        title: Text('Order Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order ID : #0054324',style: TextStyle(fontSize: 14,)),
                Icon(Icons.access_time_filled_outlined),
                Text('16 May 2024 . 04:26 PM',style: TextStyle(fontSize: 14,))
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("item:1",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
             ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: kColorgrey,
    side: BorderSide(color: kOrangeColor),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Adjust the radius as needed
    ),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16), // Adjust the padding as needed
  ),
  onPressed: () {
    // Your onPressed code here
  },
  child:const Row(
    mainAxisSize: MainAxisSize.min, // Ensures the button size is based on its content
    children: [
      Icon(Icons.location_on, color:kOrangeColor),
      SizedBox(width: 4),
      Text('Delivery Address', style: TextStyle(color:kOrangeColor)),
    ],
  ),
)

              ],
            ),
           const SizedBox(height: 8,),
           const Divider(),
           const Center(child: Text('Payment Info', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16))),
           const SizedBox(height: 8),
           const Row(
              children: [
                Text('Status : '),
                Text('Paid', style: TextStyle(color: Colors.green)),
              ],
            ),
           const Row(
              children: [
                Text('Method : ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                Text('Debit Card',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
              ],
            ),
           const SizedBox(height:8,),
           const Divider(),
            Row(
              children: [
                Image.asset(
                  'assets/images/order.png',
                  width: 70,
                  height: 70,
                ),
                SizedBox(width: 16),
               const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tornado Fries', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',style: TextStyle(color: korgGrey,fontSize: 12),),
                      Text('33 QR', style: TextStyle(color: kOrangeColor,fontWeight: FontWeight.bold,)),
                    ],
                  ),
                ),
              ],
            ),
          Divider(color :klgreyColor),
            buildPriceRow('Item Price', '66 QR'),
            buildPriceRow('Add ons', '6 QR'),
            buildPriceRow('Discount', '-20 QR', isDiscount: true),
          Divider(color :klgreyColor),
            buildPriceRow('Subtotal', '42 QR'),
            buildPriceRow('Delivery Fee', '10 QR'),
          Divider(color :klgreyColor),
            buildPriceRow('Total', '52 QR', isTotal: true,),
            SizedBox(height: 20),
           ElevatedButton(
  onPressed: () {
    // Add your cancel order functionality here
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: kWhite,
    minimumSize: Size(double.infinity, 48), // Full width and fixed height
    side: BorderSide(color: Colors.black),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Adjust the radius as needed
    ),
  ),
  child: Text('Cancel Order',style: TextStyle(color: kblack,fontWeight: FontWeight.w600,fontSize: 16),),
)

          ],
        ),
      ),
    );
  }

  Widget buildPriceRow(String label, String value, {bool isDiscount = false, bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: isTotal ? FontWeight.bold : FontWeight.normal)),
          Text(
            value,
            style: TextStyle(
              color: isDiscount ? Colors.red : (isTotal ? Colors.black : Colors.grey[700]),
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,fontSize: isTotal ? 16 : 14 
            ),
          ),
        ],
      ),
    );
  }
}
