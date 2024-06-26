import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/features/auth/controllers/send_verify_code_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/remember_me.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final SendVerifyCodeController sendVerifyCodeController =
        Get.find<SendVerifyCodeController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const RememberMe(),
        GestureDetector(
          onTap: () {
            Get.toNamed(Pages.vrificationView);
            sendVerifyCodeController.verifyCode();
          },
          child: Text(
            'Forget Password ?',
            style: AppStyles.regular14Cabin.copyWith(
              color: AppColors.camarone,
            ),
          ),
        ),
      ],
    );
  }
}
