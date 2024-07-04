import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/features/auth/controllers/send_verify_code_controller.dart';
import 'package:slide_countdown/slide_countdown.dart';

class TimeVerification extends StatelessWidget {
  const TimeVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        color: Colors.white,
        child: GetBuilder<SendVerifyCodeController>(
          init: SendVerifyCodeController(),
          builder: (controller) {
            return SlideCountdown(
              duration: const Duration(
                minutes: 3,
              ),
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              style: AppStyles.regular16Mantaga.copyWith(
                color: AppColors.camarone,
              ),
            );
          },
        ),
      ),
    );
  }
}
