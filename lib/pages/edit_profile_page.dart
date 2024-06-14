import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';
import 'package:google_fonts/google_fonts.dart';

// Validator
import 'package:coffee/validators.dart';

class EditProfilePage extends StatelessWidget {
  // Controller
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  // Validasi key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Name Input
    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: greyTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: nameController,
              validator: (value) {
                return validateText(value, 'name');
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.text,
              style: GoogleFonts.sora(
                color: blackColor,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                  hintText: 'Your Name',
                  hintStyle: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA9A9A9),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: blackColor)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: redColor)),
                  errorStyle: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFF314A),
                  )),
            ),
          ],
        ),
      );
    }

    // Username Input
    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: greyTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: usernameController,
              validator: (value) {
                return validateText(value, 'username');
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.text,
              style: GoogleFonts.sora(
                color: blackColor,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                  hintText: 'Your Username',
                  hintStyle: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA9A9A9),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: blackColor)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: redColor)),
                  errorStyle: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFF314A),
                  )),
            ),
          ],
        ),
      );
    }

    // Email Input
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: greyTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: emailController,
              validator: (value) {
                return validateEmail(value);
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.sora(
                color: blackColor,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                  hintText: 'Your Email',
                  hintStyle: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA9A9A9),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: blackColor)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: redColor)),
                  errorStyle: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFF314A),
                  )),
            ),
          ],
        ),
      );
    }

    // Content
    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            //! Apabila menggunakan column dan ingin semua widget berada ditengah, pastikan widthnya double infinity, lalu atur crossaxis = center
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/profile_image.png',
                    ),
                  ),
                ),
              ),

              // INPUT
              nameInput(),
              usernameInput(),
              emailInput(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: blackColor,
          ),
        ),
        title: Text(
          'Edit Profile',
          style: blackTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                print('success');
              } else {
                print('error');
              }
            },
            child: Icon(
              Icons.check_rounded,
              color: brownColor,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: content(),
      ),
    );
  }
}
