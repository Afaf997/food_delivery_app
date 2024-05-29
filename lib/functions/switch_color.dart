  import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';

Color getContainerColor(int index) {
    switch (index) {
      case 0:
        return  koffwhite;
      case 1:
        return koffYellow;
      case 2:
        return koffGreen;
      case 3:
        return kOrangeColor;
      default:
        return kOrangeColor;
    }
  }