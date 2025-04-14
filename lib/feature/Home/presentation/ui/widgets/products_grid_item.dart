
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/spacing.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({
    super.key,
  });

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
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const VerticalSpace(height: 10),
        Text("Product Name", style: AppStyles.semiBold14Black),
        const VerticalSpace(height: 5),
        Text("Category", style: AppStyles.semiBold14Gray1),
        const VerticalSpace(height: 5),
        Text("\$100", style: AppStyles.semiBold14Gray2),
      ],
    );
  }
}
