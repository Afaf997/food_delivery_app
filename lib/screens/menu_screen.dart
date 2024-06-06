import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/address_screen.dart';
import 'package:food_delivery_app/screens/help_support.dart';
import 'package:food_delivery_app/screens/language_screen.dart';
import 'package:food_delivery_app/screens/language_selection.dart';
import 'package:food_delivery_app/screens/my_profile.dart';
import 'package:food_delivery_app/screens/notification.dart';
import 'package:food_delivery_app/screens/order_screen.dart';
import 'package:food_delivery_app/screens/privacy_policy.dart';
import 'package:food_delivery_app/screens/terms_condition.dart';
import 'package:food_delivery_app/screens/wallet.dart';
import 'package:food_delivery_app/utils/constant.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        backgroundColor: kOrangeColor,
        toolbarHeight: 200,
        elevation: 0,
        shape:const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        flexibleSpace: Container(
          decoration:const BoxDecoration(
            color: kOrangeColor, 
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          
          child:const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              SizedBox(height: 10),
              Text(
                'Mohammed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'mohammed93@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'QR 250',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Wallet amount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          buildMenuItem(Icons.shopping_bag_outlined, 'My Orders', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  MyOrderScreen()),
            );
          }),
          buildMenuItem(Icons.notifications_none_outlined, 'Notification', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>NotificationsScreen()),
            );
          }),
          buildMenuItem(Icons.person_outline_sharp, 'My Profile', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>MyProfile()),
            );
          }),
          buildMenuItem(Icons.wallet_giftcard_outlined, 'Wallet', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>WalletScreen()),
            );
          }),
          buildMenuItem(Icons.percent_rounded, 'Coupon', () {
            // Navigator.push to CouponScreen
          }),
          buildMenuItem(Icons.person_pin_rounded, 'Address', () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>AddressForm()),
            );
          }),
          buildMenuItem(Icons.message_outlined, 'Message', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>AddressForm()),
            );
          }),
          buildMenuItem(Icons.language, 'Language', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>SelectLanguage()),
            );
          }),
          buildMenuItem(Icons.headset_mic_outlined, 'Help & Support', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>HelpSupport()),
            );
          }),
          buildMenuItem(Icons.policy_outlined, 'Privacy Policy', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>PrivacyPolicy()),
            );
          }),
          buildMenuItem(Icons.description, 'Terms & Conditions', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>TermsCondition()),
            );
          }),
        ],
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String text, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, size: 17),
      title: Text(text, style: TextStyle(fontSize: 14)),
      trailing: Icon(Icons.arrow_forward_ios, size: 14),
      onTap: onTap,
    );
  }
}
