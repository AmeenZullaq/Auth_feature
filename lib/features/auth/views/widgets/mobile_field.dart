import 'package:flutter/material.dart';
import 'package:healthy_food_app/features/auth/views/widgets/auth_text_form_field.dart';

class Mobilefield extends StatelessWidget {
  const Mobilefield({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
      hint: 'Mobile Number',
      controller: controller,
      keyboardType: TextInputType.phone,
      validator: (value) {},
    );
  }
}
