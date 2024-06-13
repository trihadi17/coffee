import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Widget
import 'package:coffee/widgets/order_card.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Empty Order
    Widget emptyOrder() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/bag.png',
              width: 79,
              color: brownColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Opss! Your Order is Empty",
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Let's order your favorite coffee",
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
                  style: whiteTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Content
    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'List Items',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 23,
          ),

          // Card
          OrderCard(
            imageUrl: 'assets/coffe_image1.png',
            name: 'Cappucino',
            subname: 'with Chocolate',
            orderCategory: 'Delivery',
            quantity: 2,
          ),
          OrderCard(
            imageUrl: 'assets/coffe_image2.png',
            name: 'Machiato',
            subname: 'with Milk',
            orderCategory: 'Pick Up',
            quantity: 1,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: whiteColor,
        centerTitle: true,
        title: Text(
          'Your Order',
          style: blackTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ),
      body: content(),
    );
  }
}
