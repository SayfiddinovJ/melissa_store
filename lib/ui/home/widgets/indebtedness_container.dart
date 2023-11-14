import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:melissa_store/utils/app_images/app_images.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class IndebtednessContainer extends StatelessWidget {
  const IndebtednessContainer({super.key, required this.isCustomer});

  final bool isCustomer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
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
            isCustomer ? "Mijoz" : "Ta’minotchi",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF212121),
            ),
          ),
          13.ph,
          Stack(
            children: [
              SvgPicture.asset(
                isCustomer ? AppImages.thirtyFive : AppImages.fiftyFive,
              ),
              Positioned(
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    41.ph,
                    Text(
                      "55mln",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF212121),
                      ),
                    ),
                    Text(
                      "Qarzdorlik",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF616161),
                      ),
                    ),
                    40.ph,
                  ],
                ),
              )
            ],
          ),
          16.ph,
          r(const Color(0xFFFFD54F),
              isCustomer ? 'Courtney Henry' : 'Annette Black'),
          4.ph,
          r(const Color(0xFF81C784),
              isCustomer ? 'Floyd Miles' : 'Cody Fisher'),
          4.ph,
          r(const Color(0xFF64B5F6),
              isCustomer ? 'Theresa Webb' : 'Leslie Alexander'),
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
        10.pw,
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
