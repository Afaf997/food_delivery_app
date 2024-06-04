import 'package:flutter/material.dart';
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
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            icon: Icons.sentiment_satisfied_rounded,
            index: 0,
            isSelected: selectedIndex == 0,
            onTap: onItemTapped,
          ),
          _buildNavItem(
            icon: Icons.shopping_cart,
            index: 1,
            isSelected: selectedIndex == 1,
            onTap: onItemTapped,
            // label: 'Cart',
          ),
          _buildNavItem(
            icon: Icons.shopping_bag_outlined,
            index: 2,
            isSelected: selectedIndex == 2,
            onTap: onItemTapped,
          ),
          _buildNavItem(
            icon: Icons.favorite_border,
            index: 3,
            isSelected: selectedIndex == 3,
            onTap: onItemTapped,
          ),
          _buildNavItem(
            icon: Icons.menu,
            index: 4,
            isSelected: selectedIndex == 4,
            onTap: onItemTapped,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required int index,
    required bool isSelected,
    required ValueChanged<int> onTap,
    String? label,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isSelected ? kOrangeColor : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: isSelected ? Colors.white : Colors.grey,
            ),
          ),
          if (label != null)
            Text(
              label,
              style: TextStyle(
                color: isSelected ? kOrangeColor : Colors.grey,
              ),
            ),
        ],
      ),
    );
  }
}
