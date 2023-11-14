import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class BalanceListTile extends StatelessWidget {
  const BalanceListTile({super.key, required this.isPure});

  final bool isPure;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
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
                isPure ? "90 mln" : "100 mln",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF212121),
                ),
              ),
              12.ph,
              Text(
                isPure ? "Soft balans" : "Balans",
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
              color: Color(isPure ? 0xFFFFF8E1 : 0xFFE3F2FD),
            ),
            child: Icon(
              isPure
                  ? Icons.wallet_outlined
                  : Icons.account_balance_wallet_outlined,
              size: 32.w,
              color: Color(isPure ? 0xFFFFC107 : 0xFF2196F3),
            ),
          ),
        ],
      ),
    );
  }
}
