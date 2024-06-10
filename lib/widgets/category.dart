import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCoffee extends StatelessWidget {
  final String name;
  final bool isActive;
  final Function(String) onTap;

  CategoryCoffee(
      {required this.name, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Ketika di ontap/klik, inisialisasi nilai function string nya sesuai name category
        onTap(name);
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        width: isActive ? 121 : 99,
        height: 38,
        alignment: Alignment.center,
        decoration: isActive
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: brownColor,
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: whiteColor,
              ),
        child: isActive
            ? Text(
                '${name}',
                style: whiteTextStyle,
              )
            : Text(
                '${name}',
                style: GoogleFonts.sora(
                  color: Color(0xff2F4B4E),
                ),
              ),
      ),
    );
  }
}
