import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/feature/Home/domain/entities/product_entity.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/spacing.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 155.w,
          height: 170.h,
          decoration: ShapeDecoration(
            color: const Color(0xFFCCCCCC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(product.imageUrl, fit: BoxFit.cover),
          ),
        ),
        const VerticalSpace(height: 10),
        Text(product.name, style: AppStyles.semiBold14Black),
        const VerticalSpace(height: 5),
        Text(product.category, style: AppStyles.semiBold14Gray1),
        const VerticalSpace(height: 5),
        Text("\$${product.price}", style: AppStyles.semiBold14Gray2),
      ],
    );
  }
}
