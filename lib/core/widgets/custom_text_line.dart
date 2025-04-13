
import 'package:flutter/material.dart';
import 'package:rika_online_store/core/utils/app_styles.dart';
import 'package:rika_online_store/core/utils/spacing.dart';

class CustomTextLine extends StatelessWidget {
  const CustomTextLine({super.key, required this.text, required this.actionText, this.onTap});
  final String text ;
  final String actionText ;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppStyles.semiBold14Gray2),
        const HorizontalSpace(width: 5),
        InkWell(
          onTap: onTap,
          child: Text(actionText, style: AppStyles.semiBold14Black),
        ),
      ],
    );
  }
}
