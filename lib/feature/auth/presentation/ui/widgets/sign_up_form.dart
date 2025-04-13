// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.formKey,
    required this.userNameController,
    required this.emailController,
    required this.firstNameController,
    required this.lasetnameController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController userNameController;
  final TextEditingController emailController;
  final TextEditingController firstNameController;
  final TextEditingController lasetnameController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomTextFormField(
              controller: userNameController,
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
              controller: emailController,
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
              controller: firstNameController,
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
              controller: lasetnameController,
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
              controller: passwordController,
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
              controller: confirmPasswordController,
              labelText: "Confirm Password",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please confirm your password';
                }
                if (value != passwordController.text) {
                  return 'Passwords do not match';
                }
                // Add more validation logic if needed
                return null;
              },
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
          ),
        ],
      ),
    );
  }
}
