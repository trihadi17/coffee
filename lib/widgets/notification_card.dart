import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subname;
  final double price;
  final String status;

  const NotificationCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.subname,
    required this.price,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 12,
        top: 12,
        bottom: 12,
        right: 20,
      ),
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Color(0xffF1F1F5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${name}',
                  style: blackTextStyle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${subname}',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$${price}',
                style: blackTextStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '${status}',
                style: GoogleFonts.sora(
                  fontWeight: semiBold,
                  color: status == 'Done' ? Color(0xff4EB571) : redColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
