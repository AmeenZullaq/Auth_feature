import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/features/auth/controllers/singup_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/confirm_password_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/email_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/mobile_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/password_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/user_name_field.dart';

class SingUpFields extends StatelessWidget {
  const SingUpFields({super.key});

  @override
  Widget build(BuildContext context) {
    /// I will create Binding class later
    /// Now i am just checking
    final SingUpController singUpController = Get.put(SingUpController());
    return Form(
      key: singUpController.formKey,
      child: Column(
        children: [
          UserNameField(
            userNameController: singUpController.userNameController,
          ),
          SizedBox(
            height: 20.h,
          ),
          EmailField(
            emailController: singUpController.emailController,
          ),
          SizedBox(
            height: 20.h,
          ),
          Mobilefield(
            mobileController: singUpController.mobileController,
          ),
          SizedBox(
            height: 20.h,
          ),
          PasswordField(
            passwordController: singUpController.passwordController,
          ),
          SizedBox(
            height: 20.h,
          ),
          ConfirmPasswordField(
            confirmPasswordController:singUpController.confirmPasswordController,
            passwordController: singUpController.passwordController,
          ),
        ],
      ),
    );
  }
}
