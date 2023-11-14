import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/cubit/drawer_cubit.dart';
import 'package:melissa_store/ui/home/home_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/report/reports_screen.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawerCubit, int>(
      builder: (context, state) {
        return Drawer(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 20.h),
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                20.ph,
                Row(
                  children: [
                    12.pw,
                    Text(
                      "Melissa-store",
                      style: TextStyle(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF212121),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        size: 20.w,
                        color: const Color(0xFF424242),
                      ),
                    ),
                  ],
                ),
                40.ph,
                r(
                  Icons.bar_chart,
                  'Statistika',
                  state == 0,
                  () {
                    context.read<DrawerCubit>().changeIndex(0);
                  },
                ),
                r(
                  Icons.assignment,
                  'Hisobotlar',
                  state == 1,
                  () {
                    context.read<DrawerCubit>().changeIndex(1);
                  },
                ),
                r(
                  Icons.card_giftcard,
                  'Mahsulotlar',
                  state == 2,
                  () {
                    context.read<DrawerCubit>().changeIndex(2);
                  },
                ),
                20.ph,
                InkWell(
                  splashColor: const Color(0xFFF44336),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(6.r),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 20.w,
                          color: const Color(0xFFF44336),
                        ),
                        12.pw,
                        Text(
                          'Hisobdan chiqish',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFF44336),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      buildWhen: (previous, current) => previous != current,
      listener: (context, state) {
        if (state == 0) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
              (route) => false);
        }
        if (state == 1) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const ReportsScreen(),
              ),
              (route) => false);
        }
      },
    );
  }

  Widget r(
    IconData iconData,
    String text,
    bool isActive,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6.r),
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFFE3F2FD) : null,
            borderRadius: BorderRadius.circular(6.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 24.w,
                color: Color(isActive ? 0xFF1E88E5 : 0xFF424242),
              ),
              12.pw,
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(isActive ? 0xFF1E88E5 : 0xFF424242),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
