import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rika_online_store/core/routing/app_routes.dart';
import 'package:rika_online_store/core/utils/app_styles.dart';
import 'package:rika_online_store/core/widgets/custom_snac_bar.dart';
import 'package:rika_online_store/core/widgets/custom_text_form_field.dart';
import 'package:rika_online_store/core/widgets/custom_text_line.dart';
import 'package:rika_online_store/core/widgets/rika_logo_image.dart';
import 'package:rika_online_store/feature/auth/data/models/sign_in_body.dart';
import 'package:rika_online_store/feature/auth/presentation/logic/sign_in_cubit/sign_in_cubit.dart';
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
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomTextFormField(
                        controller: emailController,
                        labelText: "username",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your username";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const VerticalSpace(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomTextFormField(
                        controller: passwordController,
                        labelText: "Password",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your password";
                          }
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
              const VerticalSpace(height: 70),
              BlocConsumer<SignInCubit, SignInState>(
                listener: (context, state) {
                  if (state is SignInSuccess) {
                    customSnacBar(
                      context,
                      title: "Welcome",
                      message: "Login Success",
                      contentType: ContentType.success,
                    );
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
