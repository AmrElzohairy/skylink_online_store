import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/core/utils/app_styles.dart';

import '../../../../../core/utils/app_colors.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.category,
    required this.isSelected,
  });
  final String category;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      decoration: ShapeDecoration(
        color: isSelected ? AppColors.black : AppColors.white,
        shape: RoundedRectangleBorder(
          side:
              isSelected
                  ? BorderSide.none
                  : const BorderSide(color: AppColors.textGray2),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        category,
        style:
            isSelected ? AppStyles.semiBold13White : AppStyles.semiBold13Black,
      ),
    );
  }
}
