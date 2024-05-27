import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
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
            controller.singUp();
            if (controller.status == AppStatus.loading) {
              showingDialog(
                context,
                widget: const Center(
                  child: SpinKitCircle(
                    size: 100,
                    color: Color(0xFFACE1AF),
                  ),
                ),
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
