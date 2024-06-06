import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class NotificationsScreen extends StatelessWidget {
   NotificationsScreen({super.key});

  final List<NotificationItem> notifications =  [
    NotificationItem(
      image: 'assets/images/rowPic.jpg',
      title: 'Order Delivered',
      subtitle: 'Your order #1234 has been delivered',
      date: '10.30 am',
    ),
    NotificationItem(
      image: 'assets/images/rowPic.jpg',
      title: 'New Offer',
      subtitle: 'Get 20% off on your next order',
      date: '1.00 am',
    ),
    // Add more notifications here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const ReusableText(
          text: "Notification",
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              leading: ClipRRect(
  borderRadius: BorderRadius.circular(8.0),
  child: Image.asset(
    notification.image,
    width: 50,
    height: 50,
  ),
),


              title: Text(notification.title),
              subtitle: Text(notification.subtitle),
              trailing: Text(notification.date),
            );
          },
        ),
      ),
    );
  }
}
class NotificationItem {
  final String image;
  final String title;
  final String subtitle;
  final String date;

  NotificationItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.date,
  });
}
