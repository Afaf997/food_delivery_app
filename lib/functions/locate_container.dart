import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

Widget buildLocateContainer() {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Container(
      width: 354,
      height: 151,
      decoration:const BoxDecoration(
        color: kOrangeColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 30, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/product2.png',
                  width: 75,
                  height: 75,
                ),
                const SizedBox(width: kCustomSizedBoxWidthC),
                Expanded(
                  child: RichText(
                    text:const TextSpan(
                      text: 'Locate\n',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 33, 
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Branch',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/qatar.png',
                width:double.infinity, 
                height: 150, 
  
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
