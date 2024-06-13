import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

class WishlistCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subname;

  const WishlistCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.subname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 84,
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.only(
        left: 12,
        top: 12,
        bottom: 12,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Color(0xffF1F1F5),
        borderRadius: BorderRadius.circular(12),
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

          // title, subtitle
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
                  style: greyTextStyle.copyWith(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),

          // Button Wishlist
          Image.asset(
            'assets/button_wishlist.png',
            width: 34,
          ),
        ],
      ),
    );
  }
}
