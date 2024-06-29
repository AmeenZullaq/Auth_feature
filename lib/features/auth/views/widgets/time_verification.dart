import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/features/auth/controllers/send_verify_code_controller.dart';

class TimeVerification extends StatelessWidget {
  const TimeVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 3),
        tween: IntTween(begin: 3, end: 0),
        builder: (context, value, child) {
          return GetBuilder<SendVerifyCodeController>(
            init: SendVerifyCodeController(),
            builder: (controller) {
              return Text(
                value.toString(),
                style: AppStyles.regular16Mantaga.copyWith(
                  color: AppColors.camarone,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
