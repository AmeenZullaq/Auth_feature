import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/features/auth/views/widgets/authenticated_app_bar.dart';
import 'package:healthy_food_app/features/auth/views/widgets/header_text.dart';
import 'package:healthy_food_app/features/auth/views/widgets/otp_verification.dart';

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
        Align(
          alignment: Alignment.center,
          child: Text(
            '03:00',
            style: AppStyles.regular16Mantaga.copyWith(
              color: AppColors.green014,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Send again',
          style: AppStyles.regular16Mantaga.copyWith(
            color: AppColors.green014,
          ),
        ),
        SizedBox(
          height: 60.h,
        ),
        AppButton(
          text: 'Confirm',
          onTap: () {},
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
