import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/services/validators.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_text_form_field.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({
    super.key,
    required this.userNameController,
  });
  final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: userNameController,
      hint: 'User Name',
      keyboardType: TextInputType.name,
      validator: (value) {
        return AppValidators.validateUserName(value);
      },
    );
  }
}
