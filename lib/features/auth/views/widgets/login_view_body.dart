import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/auth/controllers/login_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/forget_password.dart';
import 'package:healthy_food_app/features/auth/views/widgets/login_fields.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find<LoginController>();
    return Column(
      children: [
        Image.asset(
          Assets.imagesLoginHealthy,
          height: 250.h,
        ),
        const LoginFields(),
        SizedBox(
          height: 20.h,
        ),
        AppButton(
          onTap: () {
            if (loginController.formKey.currentState!.validate()) {
            } else {}
          },
          text: 'Log in',
        ),
        SizedBox(
          height: 5.h,
        ),
        const ForgetPassword(),
        SizedBox(
          height: 75.h,
        ),
        AppButton(
          onTap: () {
            Get.offNamed(Pages.singUpView);
          },
          text: 'Create new account',
          borderWidth: 2,
          buttonColor: AppColors.celadon.withOpacity(.3),
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
