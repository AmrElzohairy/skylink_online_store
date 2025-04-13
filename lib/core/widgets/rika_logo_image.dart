import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/core/utils/app_images.dart';

class RikaLogoImage extends StatelessWidget {
  const RikaLogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.imagesRikaLogo, height: 150.h, width: 150.w);
  }
}
