import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeCoffeeWidget extends StatelessWidget {
  final String size;
  final bool isActive;
  final Function(String) onSelectSize;

  const SizeCoffeeWidget({
    Key? key,
    required this.size,
    required this.isActive,
    required this.onSelectSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelectSize(size);
      },
      child: Container(
        width: 96,
        height: 43,
        margin: EdgeInsets.only(right: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: isActive ? Color(0xffFFF5EE) : whiteColor,
          border: Border.all(
            color: isActive ? brownColor : Color(0xffDEDEDE),
          ),
        ),
        child: Text(
          '${size}',
          style: GoogleFonts.sora(
            color: isActive ? brownColor : blackColor,
          ),
        ),
      ),
    );
  }
}
