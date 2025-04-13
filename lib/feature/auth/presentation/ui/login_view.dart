import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/core/utils/app_images.dart';

import '../../../../core/utils/spacing.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const VerticalSpace(height: 30),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                Assets.imagesRikaLogo,
                height: 200.h,
                width: 150.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
