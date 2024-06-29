import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/features/auth/controllers/send_verify_code_controller.dart';

class SendAgain extends StatelessWidget {
  const SendAgain({super.key});

  @override
  Widget build(BuildContext context) {
    final SendVerifyCodeController sendVerifyCodeController =
        Get.find<SendVerifyCodeController>();
    return GestureDetector(
      onTap: () {
        sendVerifyCodeController.verifyCode();
        sendVerifyCodeController.resetCounter();
      },
      child: Text(
        'Send again',
        style: AppStyles.regular16Mantaga.copyWith(
          color: AppColors.camarone,
        ),
      ),
    );
  }
}
