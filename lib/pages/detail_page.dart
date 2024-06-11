import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';
import 'package:google_fonts/google_fonts.dart';

// Widget
import 'package:coffee/widgets/size_product.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // variable yang menampung nilai dari pemilihan size coffe
  String selectSizeCoffee = 'M';

  @override
  Widget build(BuildContext context) {
    // SHOW DIALOG (setelah di klik button buy now)
    Future<void> showSuccessfullDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width - (2 * 30),
            child: AlertDialog(
              backgroundColor: whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),

              // Custom content
              //! Jika ingin menggunakan Column harus dibungkus dengan 'SingleChilScrollView()', agar ukuran height nya sesuai isi konten
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.close,
                          color: blackColor,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/success.png',
                      width: 100,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Hurray :)',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Item added successfully',
                      style: greyTextStyle,
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      width: 169,
                      height: 40,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/order');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: brownColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'View My Order',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    // Header
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 25,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* IMAGE PRODUCT
            ClipRRect(
              borderRadius: BorderRadius.circular(
                16,
              ),
              child: Image.asset(
                'assets/coffe_image1.png',
                fit: BoxFit.cover,
                height: 226,
                width: double.infinity,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //* TITLE, SUBTITLE, PRICE, INGREDIENTS
            Row(
              children: [
                // Title, Subtitle, Price
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cappucino',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'with Cappucino',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xffFBBE21),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '4.8 ',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            '(230)',
                            style: greySemiTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xfff9f9f9),
                      ),
                      // Center() digunakan agar image tersebut mengikuti ukuran sebenarnya, bukan ukuran container
                      child: Center(
                        child: Image.asset(
                          'assets/bean.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xfff9f9f9),
                      ),
                      // Center() digunakan agar image tersebut mengikuti ukuran sebenarnya, bukan ukuran container
                      child: Center(
                        child: Image.asset(
                          'assets/milk.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            //* DIVIDER
            Divider(
              color: Color(0xffEAEAEA),
            ),
          ],
        ),
      );
    }

    // Description
    Widget description() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Description',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 12,
            ),

            Text.rich(
              TextSpan(
                text:
                    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
                style: greyTextStyle.copyWith(
                  height: 1.7,
                ),
                children: [
                  TextSpan(
                    text: 'Readmore',
                    style: GoogleFonts.sora(
                      fontWeight: semiBold,
                      color: brownColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // SIZE (S, M, L)
    Widget sizeCoffee() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 30,
              ),
              child: Text(
                'Size',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  SizeCoffeeWidget(
                    size: 'S',
                    isActive: selectSizeCoffee == 'S',
                    onSelectSize: (size) {
                      setState(() {
                        selectSizeCoffee = size;
                      });
                    },
                  ),
                  SizeCoffeeWidget(
                    size: 'M',
                    isActive: selectSizeCoffee == 'M',
                    onSelectSize: (size) {
                      setState(() {
                        selectSizeCoffee = size;
                      });
                    },
                  ),
                  SizeCoffeeWidget(
                    size: 'L',
                    isActive: selectSizeCoffee == 'L',
                    onSelectSize: (size) {
                      setState(() {
                        selectSizeCoffee = size;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    // Custom Bottom Navigation
    Widget customBottomNav() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 22,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              24,
            ),
          ),
          color: whiteColor,
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 49,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: greyTextStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\$4.53',
                    style: GoogleFonts.sora(
                      fontSize: 18,
                      fontWeight: semiBold,
                      color: brownColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 42,
            ),
            Expanded(
              child: Container(
                height: 62,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: brownColor,
                ),
                child: TextButton(
                  onPressed: () {
                    showSuccessfullDialog();
                  },
                  child: Text(
                    'Buy Now',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffFFFFFF),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left_outlined,
                  color: blackColor,
                  size: 35,
                ),
              ),
              Text(
                'Detail',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              Image.asset(
                'assets/heart_light.png',
                width: 24,
                height: 24,
              ),
            ],
          )),
      body: ListView(
        children: [
          header(),
          description(),
          sizeCoffee(),
        ],
      ),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
