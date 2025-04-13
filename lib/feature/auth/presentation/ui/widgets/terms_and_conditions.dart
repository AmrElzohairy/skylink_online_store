import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/core/utils/app_colors.dart';
import 'package:rika_online_store/core/utils/app_styles.dart';

// ignore: must_be_immutable
class TermsAndConditions extends StatefulWidget {
  TermsAndConditions({super.key, required this.termsAccepted});

  bool termsAccepted;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
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
          value: widget.termsAccepted,
          onChanged: (value) {
            setState(() {
              widget.termsAccepted = value!;
            });
          },
        ),
        Text(
          'By signing up, you agree to our \nTerms & Conditions and Privacy Policy',
          style: AppStyles.semiBold14Gray1,
        ),
      ],
    );
  }
}
