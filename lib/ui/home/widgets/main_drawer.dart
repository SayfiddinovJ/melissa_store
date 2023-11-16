import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/cubit/drawer_cubit.dart';
import 'package:melissa_store/ui/home/home_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/categories/categories_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/client/client_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/debt/debt_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/employee/employee_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/products/products_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/recycle/recycle_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/report/reports_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/store/store_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/supplier/supplier_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/units/units_screen.dart';
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
                drawerTile(
                  Icons.bar_chart,
                  'Statistika',
                  state == 0,
                  () {
                    context.read<DrawerCubit>().changeIndex(0);
                  },
                ),
                drawerTile(
                  Icons.assignment,
                  'Hisobotlar',
                  state == 1,
                  () {
                    context.read<DrawerCubit>().changeIndex(1);
                  },
                ),
                drawerTile(
                  Icons.card_giftcard,
                  'Mahsulotlar',
                  state == 2,
                  () {
                    context.read<DrawerCubit>().changeIndex(2);
                  },
                ),
                drawerTile(
                  Icons.grid_view,
                  'Kategoriyalar',
                  state == 3,
                  () {
                    context.read<DrawerCubit>().changeIndex(3);
                  },
                ),
                drawerTile(
                  Icons.recycling,
                  'Qaytgan mahsulotlar',
                  state == 4,
                  () {
                    context.read<DrawerCubit>().changeIndex(4);
                  },
                ),
                drawerTile(
                  Icons.attach_money,
                  'Qarzdorlik',
                  state == 5,
                  () {
                    context.read<DrawerCubit>().changeIndex(5);
                  },
                ),
                drawerTile(
                  Icons.warehouse_outlined,
                  'Ombor',
                  state == 6,
                  () {
                    context.read<DrawerCubit>().changeIndex(6);
                  },
                ),
                drawerTile(
                  Icons.fire_truck_outlined,
                  'Ta\'minotchi',
                  state == 7,
                  () {
                    context.read<DrawerCubit>().changeIndex(7);
                  },
                ),
                drawerTile(
                  Icons.groups_2,
                  'Mijozlar',
                  state == 8,
                  () {
                    context.read<DrawerCubit>().changeIndex(8);
                  },
                ),
                drawerTile(
                  Icons.people,
                  'Xodimlar',
                  state == 9,
                  () {
                    context.read<DrawerCubit>().changeIndex(9);
                  },
                ),
                drawerTile(
                  Icons.attach_money,
                  'Pul birliklari',
                  state == 10,
                  () {
                    context.read<DrawerCubit>().changeIndex(10);
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
      listener: (context, state) async {
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
        if (state == 2) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductsScreen(),
              ),
              (route) => false);
        }
        if (state == 3) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const CategoriesScreen(),
              ),
              (route) => false);
        }
        if (state == 4) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const RecycleScreen(),
              ),
              (route) => false);
        }
        if (state == 5) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const DebtScreen(),
              ),
              (route) => false);
        }
        if (state == 6) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const StoreScreen(),
              ),
              (route) => false);
        }
        if (state == 7) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const SupplierScreen(),
              ),
              (route) => false);
        }
        if (state == 8) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const ClientScreen(),
              ),
              (route) => false);
        }
        if (state == 9) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const EmployeeScreen(),
              ),
              (route) => false);
        }
        if (state == 10) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const UnitsScreen(),
              ),
              (route) => false);
        }
      },
    );
  }

  Widget drawerTile(
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
