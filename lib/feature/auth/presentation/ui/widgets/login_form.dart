import 'package:flutter/material.dart';

import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
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
    return Form(
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
    );
  }
}
