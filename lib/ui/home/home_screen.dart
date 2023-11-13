import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/ui/home/widgets/app_bar_container.dart';
import 'package:melissa_store/ui/home/widgets/budget_container.dart';
import 'package:melissa_store/ui/home/widgets/sorting_container.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            56.ph,
            const AppBarContainer(),
            20.ph,
            const SortingContainer(),
            24.ph,
            const BudgetContainer(),
          ],
        ),
      ),
    );
  }
}
