import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/in_out_list_tile.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/search_container.dart';
import 'package:melissa_store/ui/home/sub_screens/widgets/units_tile.dart';
import 'package:melissa_store/ui/home/widgets/app_bar_container.dart';
import 'package:melissa_store/ui/home/widgets/main_drawer.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class UnitsScreen extends StatelessWidget {
  const UnitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            56.ph,
            const AppBarContainer(),
            20.ph,
            const InOutListTile(
              title: '2',
              subtitle: 'Valyutalar soni',
              iconData: Icons.attach_money,
              backgroundColor: Color(0xFFE3F2FD),
              iconColor: Color(0xFF2196F3),
            ),
            20.ph,
            const SearchContainer(searchList: ['USA', 'Russia']),
            20.ph,
            UnitsTile(
              name: 'USD',
              onTap1: () {},
              onTap2: () {},
            ),
            20.ph,
            UnitsTile(
              name: 'RUBL',
              onTap1: () {},
              onTap2: () {},
            ),
            20.ph,
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
