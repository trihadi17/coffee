import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Theme
import '../theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/onboarding',
              (route) => false,
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
          ),
          Text(
            "Coffee`S",
            style: GoogleFonts.sora(
              color: whiteColor,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      )),
    );
  }
}
