import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:melissa_store/ui/widgets/global_button.dart';
import 'package:melissa_store/utils/app_images/app_images.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class ReportSorting extends StatefulWidget {
  const ReportSorting({super.key});

  @override
  State<ReportSorting> createState() => _ReportSortingState();
}

class _ReportSortingState extends State<ReportSorting> {
  String selectedOption1 = 'Barchasi';
  String selectedOption2 = 'Ombor';
  String selectedOption3 = 'Xaridor';

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Saralash",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF424242),
            ),
          ),
          20.ph,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: const Color(0xFFEEEEEE), width: 1),
            ),
            child: DropdownButton<String>(
              underline: Container(),
              borderRadius: BorderRadius.circular(8.r),
              value: selectedOption1,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption1 = newValue!;
                });
              },
              items: <String>['Barchasi']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF424242),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          20.ph,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: const Color(0xFFEEEEEE), width: 1),
            ),
            child: DropdownButton<String>(
              underline: Container(),
              borderRadius: BorderRadius.circular(8.r),
              value: selectedOption2,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption2 = newValue!;
                });
              },
              items: <String>['Ombor']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF424242),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          20.ph,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: const Color(0xFFEEEEEE), width: 1),
            ),
            child: DropdownButton<String>(
              underline: Container(),
              borderRadius: BorderRadius.circular(8.r),
              value: selectedOption3,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption3 = newValue!;
                });
              },
              items: <String>['Xaridor']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF424242),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          20.ph,
          Container(
            height: 56.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 10.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: const Color(0xFFEEEEEE), width: 1),
            ),
            child: Row(
              children: [
                Text(
                  "01.01.2023",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF9E9E9E),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(AppImages.replacement),
                const Spacer(),
                Text(
                  "01.02.2023",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF9E9E9E),
                  ),
                ),
              ],
            ),
          ),
          24.ph,
          GlobalButton(
            text: 'Saralash',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
