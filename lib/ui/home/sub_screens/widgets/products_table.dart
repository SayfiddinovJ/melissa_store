import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class ProductsTable extends StatelessWidget {
  const ProductsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeaderRow(),
        _buildDataRow('Amazon', 'Macbook pro', 0),
        _buildDataRow('Fedex', 'Apple Iphone 12', 1),
        _buildDataRow('Google', 'Xolodilnik', 2),
        _buildDataRow('Amazon', 'Tecno quloqchin', 3),
        _buildDataRow('Ombor-2', 'Kitob', 4),
        _buildDataRow('Fedex', 'Gaz plita', 5),
        _buildDataRow('Facebook', 'Kir yuvish mashinasi', 6),
        _buildDataRow('Tashkent', 'O\'yin stoli', 7),
        _buildDataRow('Samarqand', 'Sichqoncha', 8),
        _buildDataRow('Amazon', 'Telefon g\'ilofi', 9),
        _buildDataRow('Google', 'Kompyuter sumkasi', 10),
        _buildDataRow('Meta', 'Ko\'zoynak', 11),
        _buildDataRow('Google', 'Lampochka (12w)', 12),
        _buildDataRow('Fedex', 'Oyoq kiyim', 13),
        _buildDataRow('Google', 'Lampochka (12w)', 14),
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
          _buildHeaderText('Ombor'),
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
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
      color: index.isEven ? null : const Color(0xFFFAFAFA),
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
