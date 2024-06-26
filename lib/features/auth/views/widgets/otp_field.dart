import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/services/validators.dart';
import 'package:healthy_food_app/core/utilis/constants/theme.dart';
import 'package:pinput/pinput.dart';

class OtpField extends StatelessWidget {
  const OtpField({
    super.key,
    required this.otpController,
  });

  final TextEditingController otpController;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: otpController,
      crossAxisAlignment: CrossAxisAlignment.center,
      length: 6,
      validator: (value) {
        return AppValidators.validateOtp(value);
      },
      pinContentAlignment: Alignment.center,
      obscureText: false,
      obscuringWidget: const Text('*'),
      keyboardType: TextInputType.text,
      defaultPinTheme: Themes.defaultPinTheme,
      focusedPinTheme: Themes.defaultPinTheme,
      submittedPinTheme: Themes.submittedPinTheme,
      errorPinTheme: Themes.errorPinTheme,
    );
  }
}
