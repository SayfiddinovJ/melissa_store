import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class RecycleTable extends StatelessWidget {
  const RecycleTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeaderRow(),
        _buildDataRow('Amazon', 'Macbook pro', 'Angel', 0),
        _buildDataRow('Fedex', 'Apple Iphone 12', 'Shawn', 1),
        _buildDataRow('Google', 'Xolodilnik', 'Aubrey', 2),
        _buildDataRow('Amazon', 'Tecno quloqchin', 'Darlene', 3),
        _buildDataRow('Ombor-2', 'Kitob', 'Esther', 4),
        _buildDataRow('Fedex', 'Gaz plita', 'Debra', 5),
        _buildDataRow('Facebook', 'Kir yuvish mashinasi', 'Darrell', 6),
        _buildDataRow('Tashkent', 'O\'yin stoli', 'Courtney', 7),
        _buildDataRow('Samarqand', 'Sichqoncha', 'Max', 8),
        _buildDataRow('Amazon', 'Telefon g\'ilofi', 'Gladys', 9),
        _buildDataRow('Google', 'Kompyuter sumkasi', 'Ann', 10),
        _buildDataRow('Meta', 'Ko\'zoynak', 'Shane', 11),
        _buildDataRow('Google', 'Lampochka (12w)', 'Greg', 12),
        _buildDataRow('Fedex', 'Oyoq kiyim', 'Ronald', 13),
        _buildDataRow('Google', 'Lampochka (12w)', 'Greg', 14),
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
          20.pw,
          _buildHeaderText('Mijoz'),
        ],
      ),
    );
  }

  Widget _buildHeaderText(String text) {
    return SizedBox(
      width: 100.w,
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

  Widget _buildDataRow(String store, String dealer, String product, int index) {
    return Container(
      decoration:
          BoxDecoration(color: index.isEven ? null : const Color(0xFFEEEEEE)),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
      child: Row(
        children: [
          _buildDataText(store),
          20.pw,
          _buildDataText(dealer),
          20.pw,
          _buildDataText(product),
        ],
      ),
    );
  }

  Widget _buildDataText(String text) {
    return SizedBox(
      width: 100.w,
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
