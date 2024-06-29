import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/features/auth/controllers/confirm_code_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/send_again.dart';
import 'package:healthy_food_app/features/auth/views/widgets/verification_app_bar.dart';
import 'package:healthy_food_app/features/auth/views/widgets/header_text.dart';
import 'package:healthy_food_app/features/auth/views/widgets/otp_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/time_verification.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ConfirmCodeController confirmCodeController =
        Get.find<ConfirmCodeController>();
    return Form(
      key: confirmCodeController.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerificationAppBar(),
          SizedBox(
            height: 12.h,
          ),
          const HeaderText(),
          SizedBox(
            height: 60.h,
          ),
          OtpField(
            otpController: confirmCodeController.otpController,
          ),
          SizedBox(
            height: 20.h,
          ),
          const TimeVerification(),
          SizedBox(
            height: 20.h,
          ),
          const SendAgain(),
          SizedBox(
            height: 60.h,
          ),
          AppButton(
            text: 'Confirm',
            onTap: () {
              confirmCodeController.confirmCode();
            },
          ),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
