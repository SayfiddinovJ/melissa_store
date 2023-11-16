import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/utils/app_images/app_images.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class UnitsTile extends StatelessWidget {
  const UnitsTile({
    super.key,
    required this.name,
    required this.onTap1,
    required this.onTap2,
  });

  final String name;
  final VoidCallback onTap1;
  final VoidCallback onTap2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
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
          Row(
            children: [
              Image.asset(
                name == 'USD' ? AppImages.usa : AppImages.russia,
                height: 32.h,
                width: 50.w,
              ),
              const Spacer(),
              PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF424242),
                      ),
                      child: SizedBox(
                        width: 120.w,
                        child: Row(
                          children: [
                            const Text('Tahrirlash'),
                            const Spacer(),
                            Icon(
                              Icons.mode_edit_outline_outlined,
                              color: const Color(0xFF424242),
                              size: 20.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: SizedBox(
                        width: 120.w,
                        child: Row(
                          children: [
                            const Text('O’chirish'),
                            const Spacer(),
                            Icon(
                              Icons.delete_outline,
                              color: const Color(0xFF424242),
                              size: 20.w,
                            )
                          ],
                        ),
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
          16.pw,
          Text(
            '$name -> SUM',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF616161),
            ),
          ),
          8.ph,
          Text(
            name == 'USD' ? "12,144.31 so’m" : '120.24 so’m',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF424242),
            ),
          ),
        ],
      ),
    );
  }
}
