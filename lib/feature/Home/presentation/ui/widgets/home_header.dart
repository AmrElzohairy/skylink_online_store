
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rika_online_store/core/utils/app_images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesMenuIcon),
        const Spacer(),
        Image.asset(Assets.imagesUserIconPng, height: 50.h, width: 50.w),
      ],
    );
  }
}
