import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subname;
  final double price;
  final int quantity;

  const CartCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.subname,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  '${imageUrl}',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${name}',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      '${subname}',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$${price}',
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        color: brownColor,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('${quantity + 1}');
                    },
                    child: Image.asset(
                      'assets/icon_plus.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '${quantity}',
                    style: blackTextStyle,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('${quantity - 1}');
                    },
                    child: Image.asset(
                      'assets/icon_minus.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_remove.png',
                width: 10,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'Remove',
                style: GoogleFonts.sora(
                  color: redColor,
                  fontSize: 12,
                  fontWeight: light,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
