import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/configs/validators.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      crossAxisAlignment: CrossAxisAlignment.center,
      length: 6,
      validator: (value) {
        return AppValidators.validateOtp(value);
      },
      pinContentAlignment: Alignment.center,
      obscureText: false,
      obscuringWidget: const Text('*'),
      keyboardType: TextInputType.text,
      defaultPinTheme: AppStyles.defaultPinTheme,
      focusedPinTheme: AppStyles.defaultPinTheme,
      submittedPinTheme: AppStyles.submittedPinTheme,
      errorPinTheme: AppStyles.errorPinTheme,
    );
  }
}
