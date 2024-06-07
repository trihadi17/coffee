import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Validators
import 'package:coffee/validators.dart';

// Package
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // visibility
  bool invisibility = true;
  bool invisibilityConfirm = true;

  // isloading (loadingcircular)
  bool isLoading = false;

  // form key for validation
  final _formkey = GlobalKey<FormState>();

  // TextEditingController
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  // Inisialisasi variable ftoast
  late FToast fToast;
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  // header
  Widget header() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'Register',
            style: whiteTextStyle.copyWith(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  // Username
  Widget usernameInput() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: usernameController,
        validator: (value) {
          return validateText(value, 'username');
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.text,
        style: GoogleFonts.sora(
          color: whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff262A34),
          contentPadding: EdgeInsets.only(
            top: 18,
            bottom: 18,
            right: 15,
          ),
          prefix: SizedBox(
            width: 15,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: Colors.green),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: redColor),
          ),
          errorStyle: GoogleFonts.sora(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffFF314A),
          ),
          hintText: 'Your Username',
          hintStyle: GoogleFonts.sora(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xffA9A9A9),
          ),
        ),
      ),
    );
  }

  // Email
  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: emailController,
        validator: (value) {
          return validateEmail(value);
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.emailAddress,
        style: GoogleFonts.sora(
          color: whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff262A34),
          contentPadding: EdgeInsets.only(
            top: 18,
            bottom: 18,
            right: 15,
          ),
          prefix: SizedBox(
            width: 15,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: Colors.green),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: redColor),
          ),
          errorStyle: GoogleFonts.sora(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffFF314A),
          ),
          hintText: 'Your Email',
          hintStyle: GoogleFonts.sora(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xffA9A9A9),
          ),
        ),
      ),
    );
  }

  // Password
  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: passwordController,
        validator: (value) {
          return validateText(value, 'password');
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.text,
        style: GoogleFonts.sora(
          color: whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        obscureText: invisibility,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff262A34),
          contentPadding: EdgeInsets.only(
            top: 18,
            bottom: 18,
            right: 15,
          ),
          prefix: SizedBox(
            width: 15,
          ),
          suffixIcon: GestureDetector(
            onTap: (() {
              setState(() {
                invisibility = !invisibility;
              });
            }),
            child: Icon(
              invisibility ? Icons.visibility_off : Icons.visibility,
              color: Color(0xffA9A9A9),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: Colors.green),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: redColor),
          ),
          errorStyle: GoogleFonts.sora(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffFF314A),
          ),
          hintText: 'Your Password',
          hintStyle: GoogleFonts.sora(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xffA9A9A9),
          ),
        ),
      ),
    );
  }

  // Confirm Password
  Widget confirmPasswordInput() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: confirmPasswordController,
        validator: (value) {
          return validateConfirmPassword(value, passwordController.text);
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.text,
        obscureText: invisibilityConfirm,
        style: GoogleFonts.sora(
          color: whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff262A34),
          contentPadding: EdgeInsets.only(
            top: 18,
            bottom: 18,
            right: 15,
          ),
          prefix: SizedBox(
            width: 15,
          ),
          suffixIcon: GestureDetector(
            onTap: (() {
              setState(() {
                invisibilityConfirm = !invisibilityConfirm;
              });
            }),
            child: Icon(
              invisibilityConfirm ? Icons.visibility_off : Icons.visibility,
              color: Color(0xffA9A9A9),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: Colors.green),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: redColor),
          ),
          errorStyle: GoogleFonts.sora(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffFF314A),
          ),
          hintText: 'Confirm Password',
          hintStyle: GoogleFonts.sora(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xffA9A9A9),
          ),
        ),
      ),
    );
  }

  // Button Register
  Widget buttonSignUp() {
    return Column(
      children: [
        SizedBox(
          height: 62,
        ),
        Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: (() {
              if (_formkey.currentState!.validate()) {
                setState(() {
                  isLoading = true;
                });

                Future.delayed(
                  Duration(seconds: 2),
                  () {
                    setState(() {
                      isLoading = false;
                    });

                    // TOAST
                    fToast.showToast(
                      child: toast(),
                      toastDuration: Duration(
                        seconds: 2,
                      ),
                      gravity: ToastGravity.SNACKBAR,
                    );

                    // Navigator
                    Navigator.pop(context);
                  },
                );
              }
            }),
            style: TextButton.styleFrom(
              backgroundColor: brownColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  17,
                ),
              ),
            ),
            child: isLoading
                ? CircularProgressIndicator(
                    color: whiteColor,
                    backgroundColor: greyColor,
                  )
                : Text(
                    'Register',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: GoogleFonts.sora(color: whiteColor),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Sign In',
                style: whiteTextStyle.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Form Validation (All Input)
  Widget formInput() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            usernameInput(),
            emailInput(),
            passwordInput(),
            confirmPasswordInput(),
            buttonSignUp(),
          ],
        ),
      ),
    );
  }

  Widget toast() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      width: 200,
      height: 42,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Register Successfull',
        style: whiteTextStyle.copyWith(
          fontSize: 16,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          header(),
          formInput(),
        ],
      ),
    );
  }
}
