import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/delivery_option_button.dart';
import 'package:food_delivery_app/utils/constant.dart';

class DeliveryOptions extends StatefulWidget {
  @override
  _DeliveryOptionsState createState() => _DeliveryOptionsState();
}

class _DeliveryOptionsState extends State<DeliveryOptions> {
  String selectedOption = 'Delivery';

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double horizontalPadding = screenWidth * 0.01;
    final double storePadding = screenWidth * 0.05;
    final double verticalPadding = screenHeight * 0.02;
    final double containerHeight = screenHeight * 0.06;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Delivery option',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: verticalPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DeliveryOptionButton(
                text: 'Delivery',
                isSelected: selectedOption == 'Delivery',
                onTap: () {
                  setState(() {
                    selectedOption = 'Delivery';
                  });
                },
                icon: Icons.delivery_dining,
              ),
              DeliveryOptionButton(
                text: 'Take away',
                isSelected: selectedOption == 'Take away',
                onTap: () {
                  setState(() {
                    selectedOption = 'Take away';
                  });
                },
                icon: Icons.shopping_bag,
              ),
              DeliveryOptionButton(
                text: 'Car hop',
                isSelected: selectedOption == 'Car hop',
                onTap: () {
                  setState(() {
                    selectedOption = 'Car hop';
                  });
                },
                icon: Icons.car_rental,
              ),
              SizedBox(height: 60,),
            ],
          ),
          if (selectedOption == 'Car hop')
            Padding(
              padding: EdgeInsets.symmetric(vertical: verticalPadding / 2),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: verticalPadding / 2),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 2,
                          child: Text(
                            "Vehicle Number",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: horizontalPadding),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: containerHeight,
                            padding: EdgeInsets.all(horizontalPadding / 2),
                            decoration: BoxDecoration(
                              color: kColorgrey,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Center(
                              child: Text(
                                "324389",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: verticalPadding / 3),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 2,
                          child: Text(
                            "Select Store",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(width: horizontalPadding),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: containerHeight,
                            padding: EdgeInsets.all(horizontalPadding / 2),
                            decoration: BoxDecoration(
                              color: kColorgrey,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "any location",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: korgGrey
                                  ),
                                ),
                                Icon(Icons.location_on, color: kOrangeColor),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          if (selectedOption == 'Take away')
            Padding(
              padding: EdgeInsets.symmetric(vertical: verticalPadding / 2),
              child: Row(
                children: [
                  const Text(
                    "Select Store",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),
                  ),
                  SizedBox(width: storePadding),
                  Expanded(
                    child: Container(
                      height: containerHeight,
                      padding: EdgeInsets.all(horizontalPadding / 2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "any location",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: korgGrey,
                              fontSize: 14
                            ),
                          ),
                          Icon(Icons.location_on, color: kOrangeColor),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
