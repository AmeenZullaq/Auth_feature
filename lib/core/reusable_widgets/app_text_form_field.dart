import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/core/utilis/constants/theme.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hint,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText,
  });

  final String hint;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      cursorColor: const Color(0xFFD7DDDB),
      cursorErrorColor: const Color(0xFFD7DDDB),
      cursorWidth: 2,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 12.w,
        ),
        hintText: hint,
        hintStyle: AppStyles.medium16Cabin,
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(
          minHeight: 16,
          minWidth: 15,
        ),
        fillColor: const Color(0xFFFAFFF8),
        filled: true,
        enabledBorder: Themes.border,
        focusedBorder: Themes.border,
        errorBorder: Themes.errorBorder,
        focusedErrorBorder: Themes.errorBorder,
      ),
    );
  }
}
