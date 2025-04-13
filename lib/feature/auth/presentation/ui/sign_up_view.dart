import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rika_online_store/core/utils/spacing.dart';
import 'package:rika_online_store/core/widgets/custom_text_form_field.dart';
import 'package:rika_online_store/core/widgets/rika_logo_image.dart';
import 'package:rika_online_store/feature/auth/data/models/sign_up_body.dart';
import 'package:rika_online_store/feature/auth/presentation/logic/cubit/sign_up_cubit.dart';
import 'package:rika_online_store/feature/auth/presentation/ui/widgets/terms_and_conditions.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/main_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool termsAccepted = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lasetnameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lasetnameController.dispose();
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomTextFormField(
                        controller: _userNameController,
                        labelText: "User Name",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const VerticalSpace(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomTextFormField(
                        controller: _emailController,
                        labelText: "Email",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          // Add more validation logic if needed
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const VerticalSpace(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomTextFormField(
                        controller: _firstNameController,
                        labelText: "FirstName",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          }
                          // Add more validation logic if needed
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const VerticalSpace(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomTextFormField(
                        controller: _lasetnameController,
                        labelText: "LastName",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name';
                          }
                          // Add more validation logic if needed
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomTextFormField(
                        controller: _passwordController,
                        labelText: "Password",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          // Add more validation logic if needed
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    const VerticalSpace(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomTextFormField(
                        controller: _confirmPasswordController,
                        labelText: "Confirm Password",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != _passwordController.text) {
                            return 'Passwords do not match';
                          }
                          // Add more validation logic if needed
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpace(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TermsAndConditions(termsAccepted: termsAccepted),
              ),
              const VerticalSpace(height: 10),
              BlocConsumer<SignUpCubit, SignUpState>(
                listener: (context, state) {
                  if (state is SignUpSuccess) {
                    context.pop();
                  }
                  if (state is SignUpFailure) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.errMessage)));
                  }
                },
                builder: (context, state) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: MainButton(
                      isLoading: state is SignUpLoading ? true : false,
                      buttonText: 'Sign Up',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<SignUpCubit>().signUp(
                            SignUpBody(
                              email: _emailController.text,
                              password: _passwordController.text,
                              username: _userNameController.text,
                              firstName: _firstNameController.text,
                              lastName: _lasetnameController.text,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
