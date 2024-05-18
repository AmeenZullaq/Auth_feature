import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/reusable_widgets/padding.dart';
import 'package:healthy_food_app/features/auth/views/widgets/email_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/mobile_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/password_field.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController mobileController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    mobileController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    mobileController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 36,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            EmailField(
              controller: emailController,
            ),
            SizedBox(
              height: 20.h,
            ),
            Mobilefield(
              controller: mobileController,
            ),
            SizedBox(
              height: 20.h,
            ),
            PasswordField(
              controller: passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
