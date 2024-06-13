import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subname;
  final String orderCategory;
  final int quantity;

  const OrderCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.subname,
    required this.orderCategory,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (orderCategory == 'Delivery') {
          Navigator.pushNamed(context, '/delivery');
        } else {
          print('Pick Up');
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 84,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffF1F1F5),
        ),
        child: Row(
          children: [
            // image
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

            // name, subname, order category
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${name}',
                    style: blackTextStyle,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '${subname}',
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${orderCategory}',
                    style: GoogleFonts.sora(
                      fontSize: 10,
                      fontWeight: semiBold,
                      color: brownColor,
                    ),
                  ),
                ],
              ),
            ),

            // quantity
            Text(
              '${quantity} Items',
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
