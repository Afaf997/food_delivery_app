import 'package:flutter/material.dart';
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
          buildMenuItem(Icons.shopping_bag_outlined, 'My Orders'),
          buildMenuItem(Icons.notifications_none_outlined, 'Notification'),
          buildMenuItem(Icons.person_outline_sharp, 'My Profile'),
          buildMenuItem(Icons.wallet_giftcard_outlined, 'Wallet'),
          buildMenuItem(Icons.percent_rounded, 'Coupon'),
          buildMenuItem(Icons.person_pin_rounded, 'Address'),
          buildMenuItem(Icons.message_outlined, 'Message'),
          buildMenuItem(Icons.language, 'Language'),
          buildMenuItem(Icons.headset_mic_outlined, 'Help & Support'),
          buildMenuItem(Icons.policy_outlined, 'Privacy Policy'),
          buildMenuItem(Icons.description, 'Terms & Conditions'),
        ],
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(icon,size: 17,),
      title: Text(text,style: TextStyle(fontSize: 14),),
      trailing: Icon(Icons.arrow_forward_ios,size: 14,),
      onTap: () {
        // Handle onTap event
      },
    );
  }
}
