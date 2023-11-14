import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:melissa_store/utils/app_images/app_images.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class DiagramContainer extends StatelessWidget {
  const DiagramContainer({super.key, required this.isInCome});

  final bool isInCome;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.w),
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
        children: [
          Row(
            children: [
              Text(
                isInCome ? "Daromad" : "Byudjet",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF212121),
                ),
              ),
              const Spacer(),
              Container(
                height: 12.w,
                width: 12.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: Color(isInCome ? 0xFFAB47BC : 0xFF42A5F5),
                ),
              ),
              8.pw,
              Text(
                "So’m",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF212121),
                ),
              ),
            ],
          ),
          20.ph,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  t('10,000,000'),
                  12.ph,
                  t('7,000,000'),
                  12.ph,
                  t('5,000,000'),
                  12.ph,
                  t('3,000,000'),
                  12.ph,
                  t('1,000,000'),
                ],
              ),
              12.pw,
              SvgPicture.asset(
                isInCome ? AppImages.income : AppImages.diagram,
                height: 140.h,
              ),
            ],
          ),
          9.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              70.pw,
              t('Dush'),
              t('Sesh'),
              t('Chor'),
              t('Pay'),
              t('Juma'),
              t('Shan'),
              t('Yak '),
            ],
          )
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
        color: const Color(0xFF616161),
      ),
    );
  }
}
