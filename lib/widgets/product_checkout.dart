import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';

class ProductCheckout extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subname;
  final int quantitiy;

  const ProductCheckout({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.subname,
    required this.quantitiy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 20,
      ),
      height: 54,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              '${imageUrl}',
              width: 54,
              height: 54,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${name}',
                  style: blackTextStyle.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '${subname}',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Text(
            '${quantitiy} items',
            style: blackTextStyle.copyWith(fontSize: 14),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
