import 'package:flutter/material.dart';

// Theme
import '../theme.dart';

// Package
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subName;
  final double price;
  final double rating;

  ProductCard({
    required this.imageUrl,
    required this.name,
    required this.subName,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 15,
          bottom: 15,
        ),
        width: 160,
        height: 249,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 4,
                top: 4,
                right: 4,
                bottom: 12,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    Image.asset(
                      '${imageUrl}',
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 51,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_star.png',
                              width: 10,
                              height: 10,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '${rating}',
                              style: whiteTextStyle.copyWith(
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: Text(
                '${name}',
                style: blackTextStyle.copyWith(
                    fontSize: 16, overflow: TextOverflow.ellipsis),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: Text(
                '${subName}',
                style: greyTextStyle.copyWith(
                    fontSize: 12, overflow: TextOverflow.ellipsis),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                right: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ ${price}',
                    style: GoogleFonts.sora(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2F4B4E),
                    ),
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: brownColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.add,
                      color: whiteColor,
                      size: 16,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
