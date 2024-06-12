import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Package
import 'package:google_fonts/google_fonts.dart';

// Widgets
import 'package:coffee/widgets/product_checkout.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TYPE ORDER (DELIVERY)
    Widget delivery() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery Address',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Jl. Kpg Sutoyo',
            style: GoogleFonts.sora(
              fontSize: 14,
              fontWeight: semiBold,
              color: Color(0xff303336),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai',
            style: greySemiTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              //* EDIT ADDRESS
              Container(
                height: 27,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(0xffDEDEDE),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_edit.png',
                      width: 14,
                      height: 14,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Edit Address',
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: regular,
                        color: Color(0xff303336),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 8,
              ),

              //* ADD NOTE
              Container(
                height: 27,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(0xffDEDEDE),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_note.png',
                      width: 14,
                      height: 14,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Add Note',
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: regular,
                        color: Color(0xff303336),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      );
    }

    // TYPE ORDER (PICK UP)
    Widget pickup() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pick Up Address',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Jl. Serayu Gg Serayu',
            style: GoogleFonts.sora(
              fontSize: 14,
              fontWeight: semiBold,
              color: Color(0xff303336),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Serayu No. 620, Payung Sekaki, Riau',
            style: greySemiTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      );
    }

    // Tabbar (Delivey/Pick Up)
    Widget orderType() {
      return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Container(
          //! syarat menggunakan tabbar harus diatur height nya
          // height nya disesuaikan dengan isi konten, atur heightnya == MediaQuery.of(context).size.height,
          // ini mempengaruhi pada tabbar view apabila menggunakan Listview/singleChildScrollView untuk scroll konten
          // pada tabbar view harus dibungkus dengan expanded
          // jika ukuran height tabbview nya statis, atur ukuran nya sesuai. Misal : 120
          // height: MediaQuery.of(context).size.height, //* ukuran sesuai konten -> ini ukuran secara keseluruhan
          height: 217, //* ini ukuran statis -> ini ukuran secara keseluruhan
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),

              //* TABBAR
              Container(
                height: 48,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xfff2f2f2),
                ),
                child: TabBar(
                  indicatorWeight: 0,
                  indicator: BoxDecoration(
                    color: brownColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelColor: whiteColor,
                  labelStyle: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  unselectedLabelColor: blackColor,
                  unselectedLabelStyle: GoogleFonts.sora(
                    fontSize: 16,
                  ),
                  tabs: [
                    Tab(text: 'Delivery'),
                    Tab(text: 'Pick Up'),
                  ],
                ),
              ),

              SizedBox(
                height: 24,
              ),

              //* TABBAR VIEW
              //! BUNGKUS DENGAN EXPANDED, Jika ingin tabbarviewnya heightnya sesuai konten
              //! Jika tidak atur heighnya secara statis
              Expanded(
                child: TabBarView(
                  children: [
                    delivery(),
                    pickup(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Content
    Widget content() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Color(0xffEAEAEA),
              thickness: 1,
            ),
          ),

          SizedBox(
            height: 20,
          ),

          // Product
          ProductCheckout(
            imageUrl: 'assets/coffe_image1.png',
            name: 'Cappucino',
            subname: 'with Chocolate',
            quantitiy: 1,
          ),
          ProductCheckout(
            imageUrl: 'assets/coffe_image2.png',
            name: 'Machiato',
            subname: 'with Chocolate + Milk',
            quantitiy: 4,
          ),

          Divider(
            color: Color(0xffF4F4F4),
            thickness: 4,
          ),

          // DETAILS PRICE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.all(16),
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: whiteColor,
                    border: Border.all(
                      color: Color(0xffEAEAEA),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/discount.png',
                        width: 24,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Text(
                          '1 Discount is applied',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                        color: blackColor,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Payment Summary',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price',
                      style: GoogleFonts.sora(
                        color: blackColor,
                      ),
                    ),
                    Text(
                      '\$ 4.53',
                      style: blackTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Delivery Fee',
                        style: GoogleFonts.sora(
                          color: blackColor,
                        ),
                      ),
                    ),
                    Text(
                      '\$ 2.0',
                      style: GoogleFonts.sora(
                        color: blackColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '\$ 1.0',
                      style: blackTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Color(0xffEAEAEA),
                  thickness: 1,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment',
                      style: GoogleFonts.sora(
                        color: blackColor,
                      ),
                    ),
                    Text(
                      '\$ 5.53',
                      style: blackTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 161,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/moneys.png',
                  width: 24,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 24,
                  width: 51,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: brownColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Cash',
                    style: GoogleFonts.sora(
                      color: whiteColor,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    '\$ 5.53',
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      color: blackColor,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/icon_vector.png',
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 62,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: brownColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  'Checkout',
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

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
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
          'Checkout',
          style: blackTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          orderType(),
          content(),
        ],
      ),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
