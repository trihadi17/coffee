import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Package
import 'package:google_fonts/google_fonts.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          height: MediaQuery.of(context).size.height,
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
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
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
                    Center(child: Text('Page 1')),
                    Center(child: Text('Page 2')),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget elemetn() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        height: 100,
        width: 100,
        color: Colors.amber,
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
          elemetn(),
          orderType(),
        ],
      ),
    );
  }
}
