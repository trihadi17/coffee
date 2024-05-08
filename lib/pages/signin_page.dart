import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // visibility or no
  bool visibility = true;

  // Header (Logo, title header)
  Widget header() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              'assets/logo.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            "Welcome back.\nLet's buy coffee.",
            style: whiteTextStyle.copyWith(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  // Input (Username, password)
  Widget input() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 82,
          ),

          // USERNAME
          Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 17,
              right: 15,
            ),
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xff262A34),
              borderRadius: BorderRadius.circular(17),
            ),
            child: TextFormField(
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: whiteColor,
              ),
              decoration: InputDecoration.collapsed(
                hintText: 'Username',
                hintStyle: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA9A9A9),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          // PASSWORD
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xff262A34),
              borderRadius: BorderRadius.circular(17),
            ),
            child: TextFormField(
              obscureText: visibility,
              style: GoogleFonts.sora(
                fontSize: 14,
                color: whiteColor,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      visibility = !visibility;
                    });
                  },
                  child: visibility
                      ? Icon(
                          Icons.visibility_off,
                          color: Color(0xffA9A9A9),
                        )
                      : Icon(
                          Icons.visibility,
                          color: Color(0xffA9A9A9),
                        ),
                ),
                hintStyle: GoogleFonts.sora(
                  fontSize: 14,
                  color: Color(0xffA9A9A9),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 6,
          ),

          Container(
            alignment: Alignment(1, 0),
            child: Text(
              'Forgot My Password',
              style: GoogleFonts.sora(
                color: Color(0xff6A6B70),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Sign Button & Sign Up
  Widget buttonSign() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Container(
            height: 55,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
              style: TextButton.styleFrom(
                backgroundColor: brownColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    17,
                  ),
                ),
              ),
              child: Text(
                'Sign In',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RichText(
            text: TextSpan(
              text: 'Don’t have account? ',
              style: GoogleFonts.sora(color: whiteColor),
              children: [
                TextSpan(
                  text: 'Sign Up',
                  style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            header(),
            input(),
            buttonSign(),
          ],
        ),
      ),
    );
  }
}
