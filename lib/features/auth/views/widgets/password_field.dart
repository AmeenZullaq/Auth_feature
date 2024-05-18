import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/features/auth/views/widgets/auth_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
      hint: 'Password',
      controller: widget.controller,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {},
      obscureText: obscureText,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        icon: Icon(
          obscureText ? Icons.visibility_off: Icons.visibility,
          color: AppColors.green5B0,
          size: 20.r,
        ),
      ),
    );
  }
}
