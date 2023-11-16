import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:melissa_store/ui/home/sub_screens/supplier/supplier_screen.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/employee_tile.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/in_out_list_tile.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/search_container.dart';
import 'package:melissa_store/ui/home/widgets/app_bar_container.dart';
import 'package:melissa_store/ui/home/widgets/main_drawer.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

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
              title: '12',
              subtitle: 'Xodimlar',
              iconData: Icons.people,
              backgroundColor: Color(0xFFE3F2FD),
              iconColor: Color(0xFF2196F3),
            ),
            20.ph,
            SearchContainer(searchList: supplierList),
            20.ph,
            ...List.generate(
              supplierList.length,
              (index) => EmployeeTile(
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
        onPressed: () async {
          await Fluttertoast.showToast(msg: 'Sahifa mavjud emas');
        },
        backgroundColor: const Color(0xFF2196F3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
