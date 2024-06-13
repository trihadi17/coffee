import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Widget
import 'package:coffee/widgets/notification_card.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Empty Notifications
    Widget emptyNotification() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/notification.png',
              width: 79,
              height: 79,
              fit: BoxFit.cover,
              color: brownColor,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Your notification is empty',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            )
          ],
        ),
      );
    }

    // Content
    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Information',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),

          SizedBox(
            height: 23,
          ),

          // Card
          NotificationCard(
            imageUrl: 'assets/coffe_image1.png',
            name: 'Cappucino',
            subname: 'with Chocolate',
            price: 43.3,
            status: 'Done',
          ),
          NotificationCard(
            imageUrl: 'assets/coffe_image2.png',
            name: 'Machiato',
            subname: 'with Chocolate + Milk',
            price: 73.3,
            status: 'Cancel',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Notifications',
          style: blackTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ),
      body: content(),
    );
  }
}
