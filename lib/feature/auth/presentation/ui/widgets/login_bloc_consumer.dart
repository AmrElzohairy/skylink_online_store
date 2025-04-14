import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rika_online_store/core/cache/cache_helper.dart';
import 'package:rika_online_store/core/routing/app_routes.dart';

import '../../../../../core/cache/cache_constants.dart';
import '../../../../../core/widgets/custom_snac_bar.dart';
import '../../../../../core/widgets/main_button.dart';
import '../../../data/models/sign_in_body.dart';
import '../../logic/sign_in_cubit/sign_in_cubit.dart';

class LoginBlocConsumer extends StatelessWidget {
  const LoginBlocConsumer({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          customSnacBar(
            context,
            title: "Welcome",
            message: "Login Success",
            contentType: ContentType.success,
          );
          CacheHelper.set(key: CacheConstants.isLoggedIn, value: true);
          context.goNamed(AppRoutes.home);
        }
        if (state is SignInFailure) {
          customSnacBar(
            context,
            title: "Error",
            message: state.errorMessage,
            contentType: ContentType.failure,
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: MainButton(
            isLoading: state is SignInLoading ? true : false,
            buttonText: 'Login',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<SignInCubit>().signIn(
                  SignInBody(
                    username: emailController.text,
                    password: passwordController.text,
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}
