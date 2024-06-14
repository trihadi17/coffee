import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Header
    Widget header() {
      return Container(
        margin: EdgeInsets.all(30),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/profile_image.png',
                width: 64,
                height: 64,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Hadi',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '@trihadi17',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/signin',
                  (route) => false,
                );
              },
              child: Image.asset(
                'assets/button_exit.png',
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${text}',
              style: greyTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: blackColor,
            ),
          ],
        ),
      );
    }

    // Content
    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 20,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            menuItem('Edit Profile'),
            menuItem('Your Orders'),
            menuItem('Help'),
            SizedBox(
              height: 34,
            ),
            Text(
              'General',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            menuItem('Privacy & Policy'),
            menuItem('Term of Service'),
            menuItem('Rate App'),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
