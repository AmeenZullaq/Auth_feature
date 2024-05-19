import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_text_form_field.dart';

class ConfirmPasswordField extends StatefulWidget {
  const ConfirmPasswordField({
    super.key,
    required this.confirmPasswordController,
  });
  final TextEditingController confirmPasswordController;

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
        // AppValidators.validateConfirmPassword(value);
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
          color: AppColors.green5B0,
          size: 20.r,
        ),
      ),
    );
  }
}
