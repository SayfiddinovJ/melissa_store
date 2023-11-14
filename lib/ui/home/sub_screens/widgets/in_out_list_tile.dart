import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class InOutListTile extends StatelessWidget {
  const InOutListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconData,
    required this.backgroundColor,
    required this.iconColor,
  });

  final String title;
  final String subtitle;
  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
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
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF212121),
                ),
              ),
              12.ph,
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF616161),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: backgroundColor,
            ),
            child: Icon(
              iconData,
              size: 28.w,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
