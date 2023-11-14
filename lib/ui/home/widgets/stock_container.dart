import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:melissa_store/utils/app_images/app_images.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class StockContainer extends StatelessWidget {
  const StockContainer({super.key});

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
            "Omborlar bo’yicha mahsulotlar",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF212121),
            ),
          ),
          12.ph,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  t('60'),
                  10.ph,
                  t('50'),
                  10.ph,
                  t('40'),
                  10.ph,
                  t('30'),
                  10.ph,
                  t('20'),
                  10.ph,
                  t('10'),
                  10.ph,
                  t('0'),
                ],
              ),
              18.pw,
              Stack(
                children: [
                  SvgPicture.asset(AppImages.horizontal),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: SvgPicture.asset(AppImages.chartColumn),
                  ),
                ],
              ),
            ],
          ),
          11.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              10.pw,
              t('Ombor-1'),
              t('Ombor-2'),
              t('Ombor-3'),
            ],
          ),
          8.ph,
        ],
      ),
    );
  }

  Widget t(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xFF424242),
      ),
    );
  }
}
