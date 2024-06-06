import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // IMAGE
          Image.asset(
            'assets/splash_image.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 600,
          ),

          // Container Linear Gradient dan  Description
          Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - (2 * 150),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                      Colors.black,
                      Colors.black,
                    ],
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'Coffee so good, \nyour taste buds \nwill love it.',
                        style: whiteTextStyle.copyWith(
                          fontSize: 34,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'The best grain, the finest roast, the \npowerful flavor.',
                        style: GoogleFonts.sora(
                          color: Color(0xffA9A9A9),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 30,
                        ),
                        width: double.infinity,
                        height: 62,
                        child: TextButton(
                          onPressed: () {
                            // Navigator
                            Navigator.pushNamed(context, '/signin');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: brownColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                          ),
                          child: Text(
                            'Get Started',
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
            ),
          ]),
        ],
      ),
    );
  }
}
