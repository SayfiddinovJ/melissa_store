import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/ui/home/widgets/app_bar_container.dart';
import 'package:melissa_store/ui/home/widgets/balance_list_tile.dart';
import 'package:melissa_store/ui/home/widgets/diagram_container.dart';
import 'package:melissa_store/ui/home/widgets/indebtedness_container.dart';
import 'package:melissa_store/ui/home/widgets/main_drawer.dart';
import 'package:melissa_store/ui/home/widgets/most_sold_container.dart';
import 'package:melissa_store/ui/home/widgets/sorting_container.dart';
import 'package:melissa_store/ui/home/widgets/stock_container.dart';
import 'package:melissa_store/ui/home/widgets/the_best_container.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            const SortingContainer(),
            24.ph,
            const DiagramContainer(isInCome: false),
            24.ph,
            const DiagramContainer(isInCome: true),
            24.ph,
            const BalanceListTile(isPure: false),
            24.ph,
            const BalanceListTile(isPure: true),
            24.ph,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IndebtednessContainer(isCustomer: false),
                IndebtednessContainer(isCustomer: true),
              ],
            ),
            24.ph,
            const MostSoldContainer(),
            24.ph,
            const StockContainer(),
            24.ph,
            const TheBestContainer(isClient: true),
            24.ph,
            const TheBestContainer(isClient: false),
            24.ph,
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
