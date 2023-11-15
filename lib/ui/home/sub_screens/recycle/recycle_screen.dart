import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/in_out_list_tile.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/recycle_table.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/report_sorting.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/search_container.dart';
import 'package:melissa_store/ui/home/widgets/app_bar_container.dart';
import 'package:melissa_store/ui/home/widgets/main_drawer.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class RecycleScreen extends StatelessWidget {
  const RecycleScreen({super.key});

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
                title: '6',
                subtitle: 'Qaytgan mahsulotlar soni',
                iconData: Icons.settings_backup_restore,
                backgroundColor: Color(0xFFE3F2FD),
                iconColor: Color(0xFF2196F3),
              ),
            ),
            24.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const ReportSorting(),
            ),
            40.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const SearchContainer(),
            ),
            20.ph,
            SizedBox(
              height: 800.h,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: const [RecycleTable()],
              ),
            ),
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
