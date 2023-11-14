import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class TheBestContainer extends StatelessWidget {
  const TheBestContainer({super.key, required this.isClient});

  final bool isClient;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF424242),
            offset: Offset(0, 1),
            blurRadius: 1,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isClient ? "Eng yaxshi mijozlar" : "Eng yaxshi ta’minotchilar",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF212121),
            ),
          ),
          16.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ism",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF424242),
                ),
              ),
              Text(
                "Summa",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF424242),
                ),
              ),
            ],
          ),
          12.ph,
          r(isClient ? 'Guy Hawkins' : 'Darlene Robertson',
              isClient ? '\$275.43' : '\$589.99'),
          r('Jane Cooper', isClient ? '\$779.58' : '\$767.50'),
          r(isClient ? 'Brooklyn Simons' : 'Ralph Edwards',
              isClient ? '\$293.01' : '\$782.01'),
          r(isClient ? 'Ronald Richards' : 'Brooklyn Simmons',
              isClient ? '\$739.65' : '\$106.58'),
          r('Eleanor Pena', isClient ? '\$948.55' : '\$779.58'),
          r(isClient ? 'Savannah Nguyen' : 'Cameron Williamson',
              isClient ? '\$576.28' : '\$450.54'),
          r(isClient ? 'Esther Howard' : 'Leslie Alexander',
              isClient ? '\$106.58' : '\$351.02'),
          r(isClient ? 'Cody Fisher' : 'Floyd Miles',
              isClient ? '\$601.13' : '\$943.65'),
          r(isClient ? 'Devon Lane' : 'Bessie Cooper',
              isClient ? '\$490.51' : '\$854.08'),
        ],
      ),
    );
  }

  Widget r(String text1, String text2) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF757575),
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF757575),
            ),
          ),
        ],
      ),
    );
  }
}
