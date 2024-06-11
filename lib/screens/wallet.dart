import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kOrangeColor,
        toolbarHeight: 220,
        elevation: 0,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        flexibleSpace: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new, color: kWhite),
                    ),
                    const SizedBox(width: 120),
                    const Text(
                      'Wallet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
               const Text(
                  'QR 250',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 22),
                Icon(Icons.add_circle, color: kWhite, size: 30),
                Text(
                  'Top up wallet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wallet history',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              _buildTransactionRow(
                amount: '+200',
                description: 'Added to wallet',
                date: '15/05/2024',
                time: '12:46 PM',
                type: 'Credit',
                amountColor: Colors.green,
              ),
              _buildTransactionRow(
                amount: '-50',
                description: 'Used for order#034',
                date: '13/05/2024',
                time: '10:10 PM',
                type: 'Debit',
                amountColor: Colors.red,
              ),
              _buildTransactionRow(
                amount: '-50',
                description: 'Used for order#034',
                date: '13/05/2024',
                time: '10:10 PM',
                type: 'Debit',
                amountColor: Colors.red,
              ),
              _buildTransactionRow(
                amount: '+200',
                description: 'Added to wallet',
                date: '15/05/2024',
                time: '12:46 PM',
                type: 'Credit',
                amountColor: Colors.green,
              ),
              _buildTransactionRow(
                amount: '+200',
                description: 'Added to wallet',
                date: '15/05/2024',
                time: '12:46 PM',
                type: 'Credit',
                amountColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionRow({
    required String amount,
    required String description,
    required String date,
    required String time,
    required String type,
    required Color amountColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:kWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  amount,
                  style: TextStyle(
                    color: amountColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text('$date $time',style: TextStyle(color: korgGrey,fontSize: 12)),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(description,style: TextStyle(color: korgGrey,fontSize: 14),),
                Text(
                  type,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
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
