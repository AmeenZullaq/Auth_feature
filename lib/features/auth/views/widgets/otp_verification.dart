import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:healthy_food_app/core/services/validators.dart';
import 'package:healthy_food_app/core/utilis/constants/theme.dart';
import 'package:healthy_food_app/features/auth/controllers/verifivation_controller.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final VerificationController authenticatedController =
        Get.find<VerificationController>();
    return Pinput(
      controller: authenticatedController.otpController,
      crossAxisAlignment: CrossAxisAlignment.center,
      length: 6,
      validator: (value) {
        return AppValidators.validateOtp(value);
      },
      pinContentAlignment: Alignment.center,
      obscureText: false,
      obscuringWidget: const Text('*'),
      keyboardType: TextInputType.text,
      defaultPinTheme: AppTheme.defaultPinTheme,
      focusedPinTheme: AppTheme.defaultPinTheme,
      submittedPinTheme: AppTheme.submittedPinTheme,
      errorPinTheme: AppTheme.errorPinTheme,
    );
  }
}
