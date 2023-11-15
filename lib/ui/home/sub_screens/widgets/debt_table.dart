import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class DebtTable extends StatelessWidget {
  const DebtTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeaderRow(),
        _buildDataRow('Cody', 'Macbook pro', 0),
        _buildDataRow('Victoria', 'Apple Iphone 12', 1),
        _buildDataRow('Angel', 'Xolodilnik', 2),
        _buildDataRow('Cameron', 'Tecno quloqchin', 3),
        _buildDataRow('Mitchel', 'Kitob', 4),
        _buildDataRow('Eduardo', 'Gaz plita', 5),
        _buildDataRow('Arthur', 'Kir yuvish mashinasi', 6),
        _buildDataRow('Arlene', 'O\'yin stoli', 7),
        _buildDataRow('Colleen', 'Sichqoncha', 8),
        _buildDataRow('Darlene', 'Telefon g\'ilofi', 9),
        _buildDataRow('Arlene', 'Kompyuter sumkasi', 10),
        _buildDataRow('Shane', 'Ko\'zoynak', 11),
        _buildDataRow('Greg', 'Lampochka (12w)', 12),
        _buildDataRow('Diane', 'Oyoq kiyim', 13),
        _buildDataRow('Kyle', 'Lampochka (12w)', 14),
      ],
    );
  }

  Widget _buildHeaderRow() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.r),
          topRight: Radius.circular(8.r),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
      child: Row(
        children: [
          _buildHeaderText('Mijoz'),
          20.pw,
          _buildHeaderText('Mahsulot'),
        ],
      ),
    );
  }

  Widget _buildHeaderText(String text) {
    return SizedBox(
      width: 120.w,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF212121),
        ),
      ),
    );
  }

  Widget _buildDataRow(String name, String age, int index) {
    return Container(
      decoration:
      BoxDecoration(color: index.isEven ? null : const Color(0xFFEEEEEE)),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
      child: Row(
        children: [
          _buildDataText(name),
          20.pw,
          _buildDataText(age),
        ],
      ),
    );
  }

  Widget _buildDataText(String text) {
    return SizedBox(
      width: 120.w,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF616161),
        ),
      ),
    );
  }
}
