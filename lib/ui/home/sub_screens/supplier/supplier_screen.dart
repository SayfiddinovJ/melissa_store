import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/in_out_list_tile.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/search_container.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/supplier_tile.dart';
import 'package:melissa_store/ui/home/widgets/app_bar_container.dart';
import 'package:melissa_store/ui/home/widgets/main_drawer.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class SupplierScreen extends StatelessWidget {
  const SupplierScreen({super.key});

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
              title: '23',
              subtitle: 'Ta\'minotchilar soni',
              iconData: Icons.fire_truck_outlined,
              backgroundColor: Color(0xFFE3F2FD),
              iconColor: Color(0xFF2196F3),
            ),
            20.ph,
            SearchContainer(searchList: supplierList),
            20.ph,
            ...List.generate(
              supplierList.length,
              (index) => SupplierTile(
                name: supplierList[index],
                onTap1: () {},
                onTap2: () {},
              ),
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

List<String> supplierList = [
  'John Doe',
  'Jane Smith',
  'Robert Johnson',
  'Emily Davis',
  'Michael Wilson',
  'Sarah Brown',
  'David Miller',
  'Olivia Taylor',
  'Christopher Lee',
  'Sophia Martinez',
];
