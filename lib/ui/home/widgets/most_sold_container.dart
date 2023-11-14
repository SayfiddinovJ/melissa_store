import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class MostSoldContainer extends StatelessWidget {
  const MostSoldContainer({super.key});

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
            "Eng ko’p sotilgan mahsulotlar",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF212121),
            ),
          ),
          12.ph,
          Row(
            children: [
              r(const Color(0xFF4CAF50), 'Qalam'),
              12.pw,
              r(const Color(0xFFFFC107), 'Sumka'),
              12.pw,
              r(const Color(0xFF2196F3), 'Quloqchin'),
            ],
          ),
          12.ph,
        ],
      ),
    );
  }

  Widget r(Color color, String text) {
    return Row(
      children: [
        Container(
          height: 12.w,
          width: 12.w,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(100.r),
          ),
        ),
        8.pw,
        Text(
          text,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF616161),
          ),
        ),
      ],
    );
  }
}
