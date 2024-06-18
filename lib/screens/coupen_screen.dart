import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/custom_appbar.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';
import 'dart:math' as math;

class CouponScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double padding = screenWidth * 0.04;

    return Scaffold(
       appBar: CustomAppBar(
        title: 'Coupon',
        onLeadingPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          children: [
            ReusableCoupon(color: kOrangeColor),
            SizedBox(height: screenHeight * 0.02),
            ReusableCoupon(color: kColoryellow),
            SizedBox(height: screenHeight * 0.02),
            ReusableCoupon(color: kColorgreen),
          ],
        ),
      ),
    );
  }
}

class ReusableCoupon extends StatelessWidget {
  final Color color;

  ReusableCoupon({required this.color});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double containerHeight = screenHeight * 0.15;
    final double fontSizeLarge = screenWidth * 0.07;
    final double fontSizeMedium = screenWidth * 0.04;
    final double fontSizeSmall = screenWidth * 0.035;
    final double padding = screenWidth * 0.05;

    return Container(
      height: containerHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.srcATop),
              child: Image.asset(
                'assets/images/coupon.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: padding),
            child: Row(
              children: [
                Transform.rotate(
                  angle: -math.pi / 2,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '50%',
                          style: TextStyle(
                            fontSize: fontSizeLarge,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Off',
                          style: TextStyle(
                            fontSize: fontSizeMedium,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                DottedDivider(),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.08),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get Flat 50% off for your first order',
                          style: TextStyle(
                            fontSize: fontSizeMedium,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Container(
                          width: screenWidth * 0.32,
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.02,
                              vertical: screenHeight * 0.005),
                          decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(
                              color: kGrayLogo,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'WELCOME',
                                style: TextStyle(
                                  fontSize: fontSizeMedium,
                                  fontWeight: FontWeight.bold,
                                  color: kblack,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.03),
                              Image.asset(
                                'assets/images/copy.png',
                              ),
                            ],
                          ),
                        ),
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

class DottedDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: 1,
      height: screenHeight * 0.15,
      child: CustomPaint(
        painter: DottedLinePainter(),
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 4, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
