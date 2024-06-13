import 'package:flutter/material.dart';

// Theme
import 'package:coffee/theme.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonProduct extends StatelessWidget {
  const SkeletonProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 249,
      width: (MediaQuery.of(context).size.width - 75) / 2,
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE
          Padding(
            padding: const EdgeInsets.only(
              left: 4,
              top: 4,
              right: 4,
              bottom: 12,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Shimmer.fromColors(
                baseColor: Color(0xffEAEAEA),
                highlightColor: whiteColor,
                child: Container(
                  height: 132,
                  width: double.infinity,
                  color: Color(0xffEAEAEA),
                ),
              ),
            ),
          ),

          // Product Name
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Shimmer.fromColors(
              baseColor: Color(0xffEAEAEA),
              highlightColor: whiteColor,
              child: Container(
                width: double.infinity,
                height: 20,
                color: Color(0xffEAEAEA),
              ),
            ),
          ),

          SizedBox(
            height: 4,
          ),

          // Product Subname
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Shimmer.fromColors(
              baseColor: Color(0xffEAEAEA),
              highlightColor: whiteColor,
              child: Container(
                width: 91,
                height: 15,
                color: Color(0xffEAEAEA),
              ),
            ),
          ),

          SizedBox(
            height: 12,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Product Price
                Shimmer.fromColors(
                  baseColor: Color(0xffEAEAEA),
                  highlightColor: whiteColor,
                  child: Container(
                    width: 56,
                    height: 23,
                    color: Color(0xffEAEAEA),
                  ),
                ),
                // Button (Add to Cart)
                Shimmer.fromColors(
                  baseColor: Color(0xffEAEAEA),
                  highlightColor: whiteColor,
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Color(0xffEAEAEA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
