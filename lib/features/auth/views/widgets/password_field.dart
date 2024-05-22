import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/services/validators.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.passwordController,
  });
  final TextEditingController passwordController;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: widget.passwordController,
      hint: 'Password',
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        return AppValidators.validatePassword(value);
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
