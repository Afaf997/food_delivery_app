import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/constant.dart';
import 'package:food_delivery_app/widget/reusable_text.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({super.key});

  final List<NotificationItem> notifications = [
    NotificationItem(
      image: 'assets/images/rowPic.jpg',
      title: 'Order Delivered',
      subtitle: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      date: '10:30 am',
    ),
    NotificationItem(
      image: 'assets/images/rowPic.jpg',
      title: 'New Offer',
      subtitle: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      date: '1:00 am',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
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
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "15 October 2024",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            Expanded(
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
                    title: Text(
                      notification.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Text(
                      notification.subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: ktextgrey,
                      ),
                    ),
                    trailing: Text(
                      notification.date,
                      style: TextStyle(
                        fontSize: 12,
                        color: ktextgrey,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
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
