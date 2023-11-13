import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/ui/widgets/zoom_tap_button.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapButton(
      onTap: onTap,
      child: Container(
        height: 54.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xFF2196F3),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
