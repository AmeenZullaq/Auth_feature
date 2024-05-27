import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/features/auth/controllers/verifivation_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/verification_app_bar.dart';
import 'package:healthy_food_app/features/auth/views/widgets/header_text.dart';
import 'package:healthy_food_app/features/auth/views/widgets/otp_field.dart';
import 'package:healthy_food_app/features/auth/views/widgets/time_verification.dart';
import 'package:healthy_food_app/features/auth/views/widgets/verification_get_builder.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final VerificationController otpController =
        Get.find<VerificationController>();
    return Form(
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
            otpController: otpController,
          ),
          SizedBox(
            height: 20.h,
          ),
          const TimeVerification(),
          SizedBox(
            height: 60.h,
          ),
          const VerificationGetBuilder(),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
