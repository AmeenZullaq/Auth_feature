import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/reusable_widgets/custom_circle_indicator.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/constants/app_status.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_dialog.dart';
import 'package:healthy_food_app/features/auth/controllers/singup_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/wrong_dialog.dart';

class SingUpGetBuilder extends StatelessWidget {
  const SingUpGetBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingUpController>(
      init: SingUpController(),
      builder: (controller) {
        return AppButton(
          text: 'Sing up',
          onTap: () {
            controller.validateSingUpFields();
            if (controller.status == AppStatus.loading) {
              showingDialog(
                context,
                widget: const CustomCircleIndicator(),
              );
            } else if (controller.status == AppStatus.failure) {
              showingDialog(
                context,
                widget: const WrongDialog(),
              );
            } else if (controller.status == AppStatus.success) {
              Get.toNamed(Pages.vrificationView);
            } else {}
          },
        );
      },
    );
  }
}
