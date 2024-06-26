import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class TimeVerification extends StatelessWidget {
  const TimeVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        '03:00',
        style: AppStyles.regular16Mantaga.copyWith(
          color: AppColors.camarone,
        ),
      ),
    );
  }
}
