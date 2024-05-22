import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/services/validators.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_text_form_field.dart';

class Mobilefield extends StatelessWidget {
  const Mobilefield({
    super.key,
    required this.mobileController,
  });
  final TextEditingController mobileController;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: mobileController,
      hint: 'Mobile Number',
      keyboardType: TextInputType.phone,
      validator: (value) {
        return AppValidators.validatePhoneNumber(value);
      },
    );
  }
}
