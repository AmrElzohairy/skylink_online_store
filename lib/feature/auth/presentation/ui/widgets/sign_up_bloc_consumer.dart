import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rika_online_store/feature/auth/data/models/sign_up_body.dart';
import 'package:rika_online_store/feature/auth/presentation/logic/sign_up_cubit/sign_up_cubit.dart';

import '../../../../../core/widgets/custom_snac_bar.dart';
import '../../../../../core/widgets/main_button.dart';

class SignUpBlocConsumer extends StatelessWidget {
  const SignUpBlocConsumer({
    super.key,
    required this.termsAccepted,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.userNameController,
    required this.firstNameController,
    required this.lasetnameController,
  });

  final bool termsAccepted;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController userNameController;
  final TextEditingController firstNameController;
  final TextEditingController lasetnameController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          customSnacBar(
            context,
            title: "Success",
            message: "Account created successfully",
            contentType: ContentType.success,
          );
          context.pop();
        }
        if (state is SignUpFailure) {
          customSnacBar(
            context,
            title: "Alert",
            message: state.errMessage,
            contentType: ContentType.failure,
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: MainButton(
            isLoading: state is SignUpLoading ? true : false,
            buttonText: 'Sign Up',
            onPressed: () {
              if (!termsAccepted) {
                customSnacBar(
                  context,
                  message: "Please accept the terms and conditions",
                  contentType: ContentType.warning,
                );
                return;
              }
              if (formKey.currentState!.validate()) {
                context.read<SignUpCubit>().signUp(
                  SignUpBody(
                    email: emailController.text,
                    password: passwordController.text,
                    username: userNameController.text,
                    firstName: firstNameController.text,
                    lastName: lasetnameController.text,
                    age: 20,
                    gender: "MALE",
                    height: 170,
                    weight: 70,
                    activityLevel: "ROOKIE",
                    goal: "GAIN_WEIGHT",
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
