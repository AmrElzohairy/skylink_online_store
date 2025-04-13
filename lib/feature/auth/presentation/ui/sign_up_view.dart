import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rika_online_store/core/utils/spacing.dart';
import 'package:rika_online_store/core/widgets/rika_logo_image.dart';
import 'package:rika_online_store/feature/auth/presentation/ui/widgets/sign_up_bloc_consumer.dart';
import 'package:rika_online_store/feature/auth/presentation/ui/widgets/sign_up_form.dart';
import 'package:rika_online_store/feature/auth/presentation/ui/widgets/terms_and_conditions.dart';

import '../../../../core/utils/app_styles.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool termsAccepted = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lasetnameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lasetnameController.dispose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                  child: Text('Sign Up!', style: AppStyles.semiBold20Black),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Text(
                    'Create an account',
                    style: AppStyles.semiBold14Gray1,
                  ),
                ),
                const VerticalSpace(height: 20),
                SignUpForm(
                  formKey: formKey,
                  userNameController: userNameController,
                  emailController: emailController,
                  firstNameController: firstNameController,
                  lasetnameController: lasetnameController,
                  passwordController: passwordController,
                  confirmPasswordController: confirmPasswordController,
                ),
                const VerticalSpace(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TermsAndConditions(
                    onChanged: (value) {
                      setState(() {
                        termsAccepted = value!;
                      });
                    },
                    value: termsAccepted,
                  ),
                ),
                const VerticalSpace(height: 10),
                SignUpBlocConsumer(
                  termsAccepted: termsAccepted,
                  formKey: formKey,
                  emailController: emailController,
                  passwordController: passwordController,
                  userNameController: userNameController,
                  firstNameController: firstNameController,
                  lasetnameController: lasetnameController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
