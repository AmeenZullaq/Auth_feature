import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/services/validators.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_text_form_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.emailController,
  });
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        return AppValidators.validateEmail(value);
      },
      hint: 'Email',
    );
  }
}
