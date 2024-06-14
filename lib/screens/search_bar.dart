import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/filter_dialog.dart';
import 'package:food_delivery_app/utils/constant.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  static const double kIconSize = 25;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final double horizontalPadding = screenWidth * 0.05; 
    final double searchBarPadding = screenWidth * 0.02; 

    return Padding(
      padding: EdgeInsets.only(right: horizontalPadding,left: horizontalPadding),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: searchBarPadding, horizontal: searchBarPadding * 2),
              decoration: BoxDecoration(
                color: kSEARCHColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: kblack, size: kIconSize),
                  const SizedBox(width: 10),
                  Text(
                    'What are you looking for?',
                    style: kSearchHintTextStyle.copyWith(color: kTextHintColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return FilterDialog();
                        },
                      );
                    },
                    child: Image.asset('assets/icons/filter.png'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Image.asset('assets/icons/close-icon.png')
        ],
      ),
    );
  }
}
