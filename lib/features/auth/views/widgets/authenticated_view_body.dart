import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/utilis/helper/showing_dialog.dart';
import 'package:healthy_food_app/features/auth/views/widgets/authenticated_app_bar.dart';
import 'package:healthy_food_app/features/auth/views/widgets/header_text.dart';
import 'package:healthy_food_app/features/auth/views/widgets/otp_verification.dart';
import 'package:healthy_food_app/features/auth/views/widgets/success_dialog.dart';
import 'package:healthy_food_app/features/auth/views/widgets/time_verification.dart';

class AuthenticatedViewBody extends StatelessWidget {
  const AuthenticatedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthenticatedAppBar(),
        SizedBox(
          height: 12.h,
        ),
        const HeaderText(),
        SizedBox(
          height: 60.h,
        ),
        const OtpVerification(),
        SizedBox(
          height: 20.h,
        ),
        const TimeVerification(),
        SizedBox(
          height: 60.h,
        ),
        AppButton(
          text: 'Confirm',
          onTap: () async {
            await showingDialog(
              context,
              dialog: const SuccessDialog(),
            );
          },
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
