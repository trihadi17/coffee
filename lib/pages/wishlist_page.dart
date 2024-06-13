import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Widgets
import 'package:coffee/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Empty Wishlist
    Widget emptyWishlist() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image
            Image.asset(
              'assets/heart.png',
              width: 90,
              fit: BoxFit.cover,
              color: brownColor,
            ),

            SizedBox(
              height: 23,
            ),

            // Title
            Text(
              "You don't have dream coffee?",
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),

            SizedBox(
              height: 16,
            ),

            // Subtitle
            Text(
              "Let's find your favorite coffee",
              style: greyTextStyle,
            ),

            SizedBox(
              height: 23,
            ),

            // Button (Explore)
            Container(
              width: 165,
              height: 44,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: brownColor,
                ),
                child: Text(
                  'Explore Coffee',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
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
          WishlistCard(
            imageUrl: 'assets/coffe_image1.png',
            name: 'Cappucino',
            subname: 'with Chocolate',
          ),
          WishlistCard(
            imageUrl: 'assets/coffe_image2.png',
            name: 'Machiato',
            subname: 'with Chocolate + Milk',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: whiteColor,
        title: Text(
          'Favorite Coffees',
          style: blackTextStyle.copyWith(fontSize: 18),
        ),
      ),
      body: content(),
    );
  }
}
