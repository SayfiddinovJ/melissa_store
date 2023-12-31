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
        _buildDataRow('Amazon', 'Navai', 'Macbook pro', 0),
        _buildDataRow('Fedex', 'Phoenix.', 'Apple Iphone 12', 1),
        _buildDataRow('Google', 'Qarchi', 'Xolodilnik', 2),
        _buildDataRow('Amazon', 'London', 'Tecno quloqchin', 3),
        _buildDataRow('Ombor-2', 'Urgench', 'Kitob', 4),
        _buildDataRow('Fedex', 'Andijan', 'Gaz plita', 5),
        _buildDataRow('Facebook', 'Diller-1', 'Kir yuvish mashinasi', 6),
        _buildDataRow('Tashkent', 'Diller-2', 'O\'yin stoli', 7),
        _buildDataRow('Samarqand', 'Phoenix.', 'Sichqoncha', 8),
        _buildDataRow('Amazon', 'Chicago', 'Telefon g\'ilofi', 9),
        _buildDataRow('Google', 'Toronto', 'Kompyuter sumkasi', 10),
        _buildDataRow('Meta', 'Diller-3', 'Ko\'zoynak', 11),
        _buildDataRow('Google', 'Diller-4', 'Lampochka (12w)', 12),
        _buildDataRow('Fedex', 'London', 'Oyoq kiyim', 13),
        _buildDataRow('Google', 'Diller-5', 'Lampochka (12w)', 14),
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
          _buildHeaderText('Diller'),
          20.pw,
          _buildHeaderText('Mahsulot'),
        ],
      ),
    );
  }

  Widget _buildHeaderText(String text) {
    return SizedBox(
      width: 80.w,
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
      width: 80.w,
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
