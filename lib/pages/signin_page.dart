import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

// Validator
import 'package:coffee/validators.dart';

// Package
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // visibility or no
  bool invisibility = true;

  // kebutuhan widget lodiang
  bool isLoading = false;

  // validasi
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Varible FlutterToast
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    // inisialisasi fluttertoas dengan BuildContext
    fToast = FToast();
    fToast.init(context);
  }

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

  // USERNAME
  Widget usernameInput() {
    return TextFormField(
      controller: _usernameController,
      validator: (value) {
        return validateText(value, 'username');
      },
      // validasi ketika apa (contoh ketika diketik atau selalu)
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.text,
      style: GoogleFonts.sora(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: whiteColor,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xff262A34),
        // content padding digunakan ukuran pada konten input
        contentPadding: const EdgeInsets.only(
          bottom: 18,
          top: 18,
          right: 15,
        ),
        // Prefix digunakan sebagai jika ada widget optional, saat ini digunakan untuk padding content
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
        hintText: 'Username',
        hintStyle: GoogleFonts.sora(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xffA9A9A9),
        ),
      ),
    );
  }

  // PASSWORD
  Widget passwordInput() {
    return TextFormField(
      controller: _passwordController,
      validator: (value) {
        return validateText(value, 'password');
      },
      // validasi ketika apa (contoh ketika diketik atau selalu)
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: invisibility,
      keyboardType: TextInputType.text,
      style: GoogleFonts.sora(
        fontSize: 14,
        color: whiteColor,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              invisibility = !invisibility;
            });
          },
          child: invisibility
              ? Icon(
                  Icons.visibility_off,
                  color: Color(0xffA9A9A9),
                )
              : Icon(
                  Icons.visibility,
                  color: Color(0xffA9A9A9),
                ),
        ),
        filled: true,
        fillColor: Color(0xff262A34),
        // content padding digunakan ukuran pada konten input
        contentPadding: const EdgeInsets.only(
          bottom: 18,
          top: 18,
        ),
        // Prefix digunakan sebagai jika ada widget optional, saat ini digunakan untuk padding content
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
        hintText: 'Password',
        hintStyle: GoogleFonts.sora(
          fontSize: 14,
          color: Color(0xffA9A9A9),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  // Input (Username, password)
  Widget input() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            usernameInput(),
            SizedBox(
              height: 20,
            ),
            passwordInput(),
            SizedBox(
              height: 20,
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
      ),
    );
  }

  // Sign Button
  Widget buttonSign() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 55,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // aktifkan widget loading
                  setState(() {
                    isLoading = true;
                  });

                  Future.delayed(
                    Duration(seconds: 2),
                    () {
                      // nonaktifkan widget loading
                      setState(() {
                        isLoading = false;
                      });

                      // kondisi akun
                      if (_passwordController.text != '123456') {
                        // toast
                        fToast.showToast(
                          child: errorToast(),
                          gravity: ToastGravity.SNACKBAR,
                          toastDuration: Duration(
                            seconds: 2,
                          ),
                        );
                      } else {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/main', (route) => false);
                      }
                    },
                  );
                }
              },
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
                      'Sign In',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  // Sign In with GOOGLE & FACEBOOK
  Widget anotherSignIn() {
    return Container(
      margin: EdgeInsets.only(top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 1,
                color: whiteColor,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Or Sign in With',
                style: whiteTextStyle.copyWith(fontSize: 11),
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                width: 50,
                height: 1,
                color: whiteColor,
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          // Google & Facebook
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/icon_google.png',
                    width: 24,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/icon_facebook.png',
                    width: 24,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  // Navigation Sign Up Page
  Widget navToSignUp() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don’t have account?',
            style: GoogleFonts.sora(
              color: whiteColor,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: Text(
              'Sign Up',
              style:
                  whiteTextStyle.copyWith(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }

  Widget errorToast() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      width: 288,
      height: 42,
      decoration: BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Incorrect Username or Password',
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
          SizedBox(
            height: 50,
          ),
          header(),
          input(),
          buttonSign(),
          anotherSignIn(),
          navToSignUp(),
        ],
      ),
    );
  }
}
