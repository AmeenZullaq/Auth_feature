import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/features/auth/controllers/login_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/email_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/mobile_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/password_field.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    /// I will create Binding class later
    /// Now i am just checking
    final LoginController loginController = Get.put(LoginController());
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
            mobileController: loginController.mobileController,
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
