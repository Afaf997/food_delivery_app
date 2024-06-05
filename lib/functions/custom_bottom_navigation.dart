import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(vertical: 10),
      decoration:const BoxDecoration(
        color:kWhite,
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
            icon: Icons.perm_identity,
            index: 0,
            isSelected: widget.selectedIndex == 0,
            onTap: widget.onItemTapped,
            label: 'Go Crispy',
          ),
          _buildNavItem(
            icon: Icons.shopping_cart,
            index: 1,
            isSelected: widget.selectedIndex == 1,
            onTap: widget.onItemTapped,
            label: 'Cart',
          ),
          _buildNavItem(
            icon: Icons.shopping_bag_outlined,
            index: 2,
            isSelected: widget.selectedIndex == 2,
            onTap: widget.onItemTapped,
            label: 'my order',
          ),
          _buildNavItem(
            icon: Icons.favorite_outline_rounded,
            index: 3,
            isSelected: widget.selectedIndex == 3,
            onTap: widget.onItemTapped,
            label: 'Favourite',
          ),
          _buildNavItem(
            icon: Icons.filter_list_outlined,
            index: 4,
            isSelected: widget.selectedIndex == 4,
            onTap: widget.onItemTapped,
            label: 'menu',
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
    required String label,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: isSelected
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: kOrangeColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                const  SizedBox(width: 8),
                  Text(
                    label,
                    style:const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : Icon(
              icon,
              color: Colors.grey,
            ),
    );
  }
}
