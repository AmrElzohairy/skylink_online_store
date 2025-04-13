import 'package:flutter/material.dart';
import 'package:rika_online_store/core/utils/app_colors.dart';
import 'package:rika_online_store/core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;

  final TextEditingController? controller;

  final FormFieldValidator<String>? validator;

  /// The type of keyboard to use for editing the text. Defaults to [TextInputType.text].
  final TextInputType? keyboardType;

  final bool obscureText;

  final String? hintText;

  /// Defaults to [TextInputAction.next].
  final TextInputAction? textInputAction;

  final ValueChanged<String>? onFieldSubmitted;

  final ValueChanged<String>? onChanged;

  final FormFieldSetter<String>? onSaved;

  final FocusNode? focusNode;

  final Widget? prefixIcon;

  final Widget? suffixIcon;

  ///  to [AutovalidateMode.onUserInteraction].
  final AutovalidateMode? autovalidateMode;

  final String? initialValue;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
    this.textInputAction,
    this.onFieldSubmitted,
    this.onChanged,
    this.onSaved,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
    this.autovalidateMode,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      onSaved: onSaved,
      focusNode: focusNode,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
      initialValue: initialValue,
      decoration: InputDecoration(
        labelText: labelText, // Customizable
        hintText: hintText, // Customizable
        prefixIcon: prefixIcon, // Customizable
        suffixIcon: suffixIcon, // Customizable
        // --- Fixed Styles (as per your request) ---
        labelStyle: AppStyles.semiBold16Black,
        border: const UnderlineInputBorder(),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.enabledBorderColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        // You might want to define focusedErrorBorder as well for consistency
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0), // Example
        ),
      ),
    );
  }
}
