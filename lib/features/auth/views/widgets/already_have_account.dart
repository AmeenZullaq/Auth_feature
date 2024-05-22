import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account ? ',
          style: AppStyles.medium12Cabin,
        ),
        GestureDetector(
          onTap: () {
            Get.offNamed(Pages.logInView);
          },
          child: Text(
            'Log in',
            style: AppStyles.medium12Cabin.copyWith(
              color: AppColors.forstGreen,
            ),
          ),
        ),
      ],
    );
  }
}
