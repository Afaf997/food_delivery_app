import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/history_order.dart';
import 'package:food_delivery_app/functions/running_order.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kWhite,
        toolbarHeight: 100,
        title: const ReusableText(
          text: 'My Order',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        'Running',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                        ),
                      ),
                      if (_selectedIndex == 0)
                        Container(
                          height: 2,
                          width: 100,
                          color:kOrangeColor,
                        ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        'History',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                        ),
                      ),
                      if (_selectedIndex == 1)
                        Container(
                          height: 2,
                          width: 100,
                          color:kOrangeColor,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: _selectedIndex == 0 ? RunningOrders() : HistoryOrders(),
          ),
        ],
      ),
    );
  }
}
