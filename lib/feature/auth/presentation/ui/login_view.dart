import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rika_online_store/core/routing/app_routes.dart';
import 'package:rika_online_store/core/utils/app_styles.dart';
import 'package:rika_online_store/core/widgets/custom_text_line.dart';
import 'package:rika_online_store/core/widgets/rika_logo_image.dart';
import 'package:rika_online_store/feature/auth/presentation/ui/widgets/login_bloc_consumer.dart';
import 'package:rika_online_store/feature/auth/presentation/ui/widgets/login_form.dart';
import 'package:rika_online_store/feature/auth/presentation/ui/widgets/or_widget.dart';

import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/main_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(height: 30),
              const Align(
                alignment: Alignment.topCenter,
                child: RikaLogoImage(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text('Welcome!', style: AppStyles.semiBold20Black),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  'please login or sign up to continue our app',
                  style: AppStyles.semiBold14Gray1,
                ),
              ),
              const VerticalSpace(height: 80),
              LoginForm(
                formKey: formKey,
                emailController: emailController,
                passwordController: passwordController,
              ),
              const VerticalSpace(height: 70),
              LoginBlocConsumer(
                formKey: formKey,
                emailController: emailController,
                passwordController: passwordController,
              ),
              const VerticalSpace(height: 20),
              const OrWidget(),
              const VerticalSpace(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w),
                child: MainButton(
                  buttonColor: Colors.redAccent.shade700,
                  icon: MdiIcons.google,
                  buttonText: 'Sign in with Google',
                  onPressed: () {},
                ),
              ),
              const VerticalSpace(height: 30),
              CustomTextLine(
                actionText: "Sign up",
                text: "Don't have an account?",
                onTap: () {
                  context.pushNamed(AppRoutes.signUp);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
