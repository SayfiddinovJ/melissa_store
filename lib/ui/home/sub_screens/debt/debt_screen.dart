import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/category_selector.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/debt_table.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/in_out_list_tile.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/report_sorting.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/search_container.dart';
import 'package:melissa_store/ui/home/widgets/app_bar_container.dart';
import 'package:melissa_store/ui/home/widgets/main_drawer.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class DebtScreen extends StatelessWidget {
  const DebtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            56.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const AppBarContainer(),
            ),
            20.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const InOutListTile(
                title: '112,000,000 so’m',
                subtitle: 'Umumiy narx',
                iconData: Icons.attach_money,
                backgroundColor: Color(0xFFFFF8E1),
                iconColor: Color(0xFFFFC107),
              ),
            ),
            24.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const ReportSorting(),
            ),
            40.ph,
            SizedBox(height: 48.h, child: const CategorySelector()),
            32.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const SearchContainer(),
            ),
            20.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const DebtTable(),
            ),
            34.ph,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF2196F3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
