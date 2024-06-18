  import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

  class SummaryRow extends StatelessWidget {
    final String label;
    final String value;
    final bool isTotal;
    final bool isDiscount;

    const SummaryRow({
      required this.label,
      required this.value,
      this.isTotal = false,
      this.isDiscount = false,
    });

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: isTotal ? 16 : 14,
                fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                color: isDiscount ? kredcolor : kblack,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: isTotal ? 16 : 14,
                fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                color: isDiscount ? kredcolor : kblack,
              ),
            ),
          ],
        ),
      );
    }
  }
