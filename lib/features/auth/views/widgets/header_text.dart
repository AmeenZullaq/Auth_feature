import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Verification Code',
          style: AppStyles.regular22Mantaga.copyWith(
            color: AppColors.camarone,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          'We have sent the verification code to \n your email address',
          style: AppStyles.regular16Mantaga.copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
