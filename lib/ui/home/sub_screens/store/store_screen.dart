import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/in_out_list_tile.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/search_container.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/store_tile.dart';
import 'package:melissa_store/ui/home/widgets/app_bar_container.dart';
import 'package:melissa_store/ui/home/widgets/main_drawer.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

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
              title: '4',
              subtitle: 'Omborlar soni',
              iconData: Icons.warehouse_outlined,
              backgroundColor: Color(0xFFE3F2FD),
              iconColor: Color(0xFF2196F3),
            ),
            20.ph,
            SearchContainer(
              searchList: List.generate(6, (index) => 'Ombor-$index'),
            ),
            20.ph,
            ...List.generate(
              6,
              (index) => StoreTile(
                index: index + 1,
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
