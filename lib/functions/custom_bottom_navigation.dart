import 'package:flutter/material.dart';
import 'package:food_delivery_app/functions/bottom_sheet.dart';
import 'package:food_delivery_app/utils/constant.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        onItemTapped(index);
        if (index == 1) {
          showCustomBottomSheet(context);
        }
      },
      selectedItemColor:kOrangeColor,
      unselectedItemColor: kblack,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity),
          label: 'Go Crispy',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: 'Wish',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }


}
