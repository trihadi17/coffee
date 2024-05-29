import 'package:flutter/material.dart';

// Theme
import '../theme.dart';

// Pages
import 'home_page.dart';
import 'wishlist_page.dart';
import 'checkout_page.dart';
import 'notification_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  // BODY KETIKA NAVBAR DITEKAN BERDASRKAN CURRENT INDEX
  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
        break;
      case 1:
        return WishlistPage();
        break;

      case 2:
        return CheckoutPage();
        break;
      case 3:
        return NotificationPage();
        break;
      default:
        return HomePage();
    }
  }

  Widget customBottomNav() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/home.png',
                      width: 24,
                      color: currentIndex == 0 ? brownColor : Color(0xff8D8D8D),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 10,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: currentIndex == 0
                            ? LinearGradient(
                                colors: [
                                  Color(0xffEDAB81),
                                  brownColor,
                                ],
                              )
                            : LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/heart.png',
                      width: 24,
                      color: currentIndex == 1 ? brownColor : Color(0xff8D8D8D),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 10,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: currentIndex == 1
                            ? LinearGradient(
                                colors: [
                                  Color(0xffEDAB81),
                                  brownColor,
                                ],
                              )
                            : LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/bag.png',
                      width: 24,
                      color: currentIndex == 2 ? brownColor : Color(0xff8D8D8D),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 10,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: currentIndex == 2
                            ? LinearGradient(
                                colors: [
                                  Color(0xffEDAB81),
                                  brownColor,
                                ],
                              )
                            : LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/notification.png',
                      width: 24,
                      color: currentIndex == 3 ? brownColor : Color(0xff8D8D8D),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 10,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: currentIndex == 3
                            ? LinearGradient(
                                colors: [
                                  Color(0xffEDAB81),
                                  brownColor,
                                ],
                              )
                            : LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
