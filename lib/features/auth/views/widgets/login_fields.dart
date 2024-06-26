import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/features/auth/controllers/login_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/email_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/mobile_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/password_field.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({
    super.key,
    required this.loginController,
  });
  final LoginController loginController;
 
  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginController.formKey,
      child: Column(
        children: [
          EmailField(
            emailController: loginController.emailController,
          ),
          SizedBox(
            height: 20.h,
          ),
          Mobilefield(
            mobileController: loginController.mobileNumberController,
          ),
          SizedBox(
            height: 20.h,
          ),
          PasswordField(
            passwordController: loginController.passwordController,
          ),
        ],
      ),
    );
  }
}
