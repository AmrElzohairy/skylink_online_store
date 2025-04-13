import 'package:flutter/material.dart';
import 'package:rika_online_store/core/utils/app_images.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                Assets.imagesRikaLogo,
                height: 200,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
