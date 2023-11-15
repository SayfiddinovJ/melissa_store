import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/cubit/category_cubit.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, int>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          padding: EdgeInsets.all(4.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0xFF424242),
                offset: Offset(0, 1),
                blurRadius: 1,
                spreadRadius: 0.5,
              ),
            ],
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              text(
                'Mijoz',
                state == 0,
                () {
                  context.read<CategoryCubit>().changeIndex(0);
                },
              ),
              text(
                'Ta\'minotchi',
                state == 1,
                () {
                  context.read<CategoryCubit>().changeIndex(1);
                },
              ),
              text(
                'Umumiy qarzdorlik',
                state == 2,
                () {
                  context.read<CategoryCubit>().changeIndex(2);
                },
              ),
              text(
                'Oldindan to\'lov',
                state == 3,
                () {
                  context.read<CategoryCubit>().changeIndex(3);
                },
              ),
            ],
          ),
        );
      },
      buildWhen: (oldState, newState) => oldState != newState,
    );
  }

  Widget text(String text, bool isActive, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4.r),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: isActive ? const Color(0xFFE3F2FD) : null,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color:
                  isActive ? const Color(0xFF2196F3) : const Color(0xFF616161),
            ),
          ),
        ),
      ),
    );
  }
}
