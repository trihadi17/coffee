import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            ],
          )
        ],
      ),
    );
  }
}
