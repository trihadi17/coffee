import 'package:flutter/material.dart';

// pages
import 'pages/splash_page.dart';
import 'pages/onboarding_page.dart';
import 'pages/signin_page.dart';
import 'pages/signup_page.dart';
import 'pages/main_page.dart';
import 'pages/home_page.dart';
import 'pages/detail_page.dart';
import 'pages/cart_page.dart';
import 'pages/checkout_page.dart';
import 'pages/delivery_page.dart';

void main() {
  runApp(CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnBoardingPage(),
        '/signin': (context) => SignInPage(),
        '/signup': (context) => SignUpPage(),
        '/main': (context) => MainPage(),
        '/home': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/delivery': (context) => DeliveryPage(),
      },
    );
  }
}
