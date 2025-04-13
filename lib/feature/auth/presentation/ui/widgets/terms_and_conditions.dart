import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/core/utils/app_colors.dart';
import 'package:rika_online_store/core/utils/app_styles.dart';

class TermsAndConditions extends StatelessWidget {
  final void Function(bool?) onChanged;
  final bool value;

  const TermsAndConditions({
    super.key,
    required this.onChanged,
    required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          activeColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.r),
          ),
          value: value,
          onChanged: onChanged,
        ),
        Text(
          'By signing up, you agree to our \nTerms & Conditions and Privacy Policy',
          style: AppStyles.semiBold14Gray1,
        ),
      ],
    );
  }
}
