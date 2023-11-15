import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/in_out_list_tile.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/products_table.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/report_sorting.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/search_container.dart';
import 'package:melissa_store/ui/home/widgets/app_bar_container.dart';
import 'package:melissa_store/ui/home/widgets/main_drawer.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            56.ph,
            const AppBarContainer(),
            20.ph,
            const InOutListTile(
              title: '6',
              subtitle: 'Kategoriya',
              iconData: Icons.widgets_outlined,
              backgroundColor: Color(0xFFE3F2FD),
              iconColor: Color(0xFF2196F3),
            ),
            20.ph,
            const InOutListTile(
              title: '7729',
              subtitle: 'Umumiy soni',
              iconData: Icons.wallet_giftcard,
              backgroundColor: Color(0xFFE8F5E9),
              iconColor: Color(0xFF4CAF50),
            ),
            20.ph,
            const InOutListTile(
              title: '112,000,000 so’m',
              subtitle: 'Umumiy narx',
              iconData: Icons.monetization_on_outlined,
              backgroundColor: Color(0xFFFFF8E1),
              iconColor: Color(0xFFFFC107),
            ),
            24.ph,
            const ReportSorting(),
            40.ph,
            const SearchContainer(),
            20.ph,
            const ProductsTable(),
            34.ph,
          ],
        ),
      ),
    );
  }
}
