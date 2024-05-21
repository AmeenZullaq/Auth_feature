import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/configs/validators.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_text_form_field.dart';

class ConfirmPasswordField extends StatefulWidget {
  const ConfirmPasswordField({
    super.key,
    required this.confirmPasswordController,
    required this.passwordController,
  });
  final TextEditingController confirmPasswordController;

  final TextEditingController passwordController;

  @override
  State<ConfirmPasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<ConfirmPasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: widget.confirmPasswordController,
      hint: 'Confirm Password',
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        return AppValidators.validateConfirmPassword(
          value,
          widget.passwordController.text,
        );
      },
      obscureText: obscureText,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        icon: Icon(
          obscureText
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
          color: AppColors.springRain,
          size: 20.r,
        ),
      ),
    );
  }
}
