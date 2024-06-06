import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffF9F9F9),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.chevron_left_outlined,
                color: blackColor,
                size: 35,
              ),
              Text(
                'Detail',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              Image.asset(
                'assets/heart_light.png',
                width: 24,
                height: 24,
              ),
            ],
          )),
      body: Center(
        child: Text('Detail Page'),
      ),
    );
  }
}
