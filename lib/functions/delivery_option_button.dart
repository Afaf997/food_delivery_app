import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

class DeliveryOptionButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  final IconData icon; // Add icon parameter

  const DeliveryOptionButton({
    required this.text,
    required this.isSelected,
    required this.onTap,
    required this.icon, // Add icon parameter
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 11),
        decoration: BoxDecoration(
          color: Colors.grey[200], 
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? kOrangeColor : Colors.transparent, // Border color
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? kOrangeColor : ktextgrey,
            ),
            const SizedBox(width: 8), 
            Text(
              text,
              style: TextStyle(
                color: isSelected ? kOrangeColor : ktextgrey,
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            ),
          ],
        ),
      ),
    );
  }
}
