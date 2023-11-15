import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:melissa_store/data/models/product_model.dart';
import 'package:melissa_store/utils/extensions/extensions.dart';

class ProductsTile extends StatelessWidget {
  const ProductsTile({
    super.key,
    required this.product,
    required this.onTap1,
    required this.onTap2,
  });

  final ProductModel product;
  final VoidCallback onTap1;
  final VoidCallback onTap2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF424242),
            offset: Offset(0, 1),
            blurRadius: 1,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF424242),
                ),
              ),
              const Spacer(),
              PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF424242),
                      ),
                      child: SizedBox(
                        width: 120.w,
                        child: Row(
                          children: [
                            const Text('Tahrirlash'),
                            const Spacer(),
                            Icon(
                              Icons.mode_edit_outline_outlined,
                              color: const Color(0xFF424242),
                              size: 20.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: SizedBox(
                        width: 120.w,
                        child: Row(
                          children: [
                            const Text('O’chirish'),
                            const Spacer(),
                            Icon(
                              Icons.delete_outline,
                              color: const Color(0xFF424242),
                              size: 20.w,
                            )
                          ],
                        ),
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
          Text(
            "Kod: ${product.code}",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF616161),
            ),
          ),
          12.ph,
          Text(
            product.createdAt,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF9E9E9E),
            ),
          ),
        ],
      ),
    );
  }
}
