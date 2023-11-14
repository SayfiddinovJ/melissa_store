import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/ui/widgets/searcher.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: GestureDetector(
            onTap: () {
              showSearch(
                context: context,
                delegate: ProductSearchDelegate([]),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: const Color(0xFF9E9E9E),
                  width: 1,
                ),
              ),
              child: Text(
                "Izlash...",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF9E9E9E),
                ),
              ),
            ),
          ),
        ),
        10.pw,
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: const Color(0xFF2196F3),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(
            Icons.search,
            size: 20.w,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
