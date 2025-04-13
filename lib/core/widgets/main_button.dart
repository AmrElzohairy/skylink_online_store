import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/core/utils/app_colors.dart';
import 'package:rika_online_store/core/utils/app_styles.dart';
import 'package:rika_online_store/core/utils/spacing.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.buttonText,
    this.onPressed,
    this.icon,
    this.buttonColor,
    this.isLoading = false,
  });
  final String buttonText;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? buttonColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        child:
            isLoading
                ? SizedBox(
                  width: 25.sp,
                  height: 25.sp,
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.white,
                      strokeWidth: 2,
                    ),
                  ),
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null)
                      Icon(icon, color: AppColors.white, size: 20.sp),
                    const HorizontalSpace(width: 10),
                    Text(buttonText, style: AppStyles.extraBold16White),
                  ],
                ),
      ),
    );
  }
}
