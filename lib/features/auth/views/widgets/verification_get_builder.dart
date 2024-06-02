import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/utilis/constants/app_status.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_bottom_sheet.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_dialog.dart';
import 'package:healthy_food_app/features/auth/controllers/verifivation_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/success_bottom_sheet.dart';
import 'package:healthy_food_app/features/auth/views/widgets/wrong_dialog.dart';

class VerificationGetBuilder extends StatelessWidget {
  const VerificationGetBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerificationController>(
      init: VerificationController(),
      builder: (controller) {
        return AppButton(
          text: 'Confirm',
          onTap: () {
            controller.validateOtpField();
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
              showingBottomSheet(
                context,
                widget: const SuccessBottomSheet(),
              );
            } else {}
          },
        );
      },
    );
  }
}
