import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Package
import 'package:google_fonts/google_fonts.dart';

// Widget
import '../widgets/category.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  int currentIndex = 0;

  // Header
  Widget header() {
    // Content
    return Column(
      children: [
        SizedBox(
          height: 19,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      color: Color(0xffB7B7B7),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Bilzen, Tanjungbalai',
                        style: GoogleFonts.sora(
                          color: Color(0xffDDDDDD),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    14,
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/profile_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget search() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        top: 28,
        right: 28,
      ),
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xff313131),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16,
              bottom: 16,
              right: 12,
            ),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_search.png'),
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              style: GoogleFonts.sora(
                color: whiteColor,
              ),
              decoration: InputDecoration.collapsed(
                hintText: 'Search coffee',
                hintStyle: GoogleFonts.sora(
                  color: Color(0xff989898),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            width: 44,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_filter.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget banner() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 24,
      ),
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage('assets/header_image.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 62,
                ),
                Container(
                  width: 200,
                  height: 27,
                  color: Color(0xff1C1C1C),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 149,
                  height: 23,
                  color: Color(0xff1C1C1C),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 26,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffED5151),
                  ),
                  child: Text(
                    'Promo',
                    style: whiteTextStyle,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Buy one get \none FREE',
                  style: whiteTextStyle.copyWith(fontSize: 32),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              CategoryCoffee(
                name: 'Cappucino',
                isActive: true,
              ),
              CategoryCoffee(
                name: 'Machiato',
                isActive: false,
              ),
              CategoryCoffee(
                name: 'Latte',
                isActive: false,
              ),
              CategoryCoffee(
                name: 'Americano',
                isActive: false,
              ),
            ],
          ),
        ),

        SizedBox(
          height: 24,
        ),

        // Card
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Wrap(
            children: [
              ProductCard(
                imageUrl: 'assets/coffe_image1.png',
                name: 'Cappucino',
                subName: 'with Chocolate',
                price: 4.53,
                rating: 4.8,
              ),
              ProductCard(
                imageUrl: 'assets/coffe_image2.png',
                name: 'Cappucino',
                subName: 'with Oat Milk',
                price: 3.90,
                rating: 4.9,
              ),
              ProductCard(
                imageUrl: 'assets/coffe_image3.png',
                name: 'Cappucino',
                subName: 'with Ice Cream',
                price: 5.00,
                rating: 4.7,
              ),
              ProductCard(
                imageUrl: 'assets/coffe_image4.png',
                name: 'Cappucino',
                subName: 'with Chocolate',
                price: 4.69,
                rating: 4.9,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Stack(
        children: [
          // Background
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff131313),
                  Color(0xff313131),
                ],
              ),
            ),
          ),

          ListView(
            children: [
              // Content
              header(),
              search(),
              banner(),
              content(),
            ],
          )
        ],
      ),
    );
  }
}
