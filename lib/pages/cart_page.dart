import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Widget
import 'package:coffee/widgets/cart_card.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // EMPTY CART
    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_cart.png',
              width: 79,
            ),
            SizedBox(
              height: 31,
            ),
            Text(
              "You don't have dream coffee ?",
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Let's find tour favorite coffee",
              style: greyTextStyle,
            ),
            SizedBox(
              height: 23,
            ),
            Container(
              width: 165,
              height: 44,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                style: TextButton.styleFrom(
                    backgroundColor: brownColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Text(
                  'Explore Coffee',
                  style: whiteTextStyle,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          SizedBox(
            height: 30,
          ),
          CartCard(
            imageUrl: 'assets/coffe_image1.png',
            name: 'Cappucino',
            subname: 'with Chocolate',
            price: 143.98,
            quantity: 1,
          ),
          CartCard(
            imageUrl: 'assets/coffe_image2.png',
            name: 'Machiato',
            subname: 'with Chocolate',
            price: 132.0,
            quantity: 4,
          ),
        ],
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 180,
        color: whiteColor,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    '\$287.96',
                    style: GoogleFonts.sora(
                      color: brownColor,
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Color(0xffEAEAEA),
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: brownColor,
                  // ADA PADDING DI BUTTON
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: whiteColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        // menghilang tombol back default
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: whiteColor,
        centerTitle: true,

        //* MEMBUAT LEADING DAN TITLE CUSTOM
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_outlined,
            color: blackColor,
            size: 35,
          ),
        ),
        title: Text(
          'Cart',
          style: blackTextStyle,
        ),
      ),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
