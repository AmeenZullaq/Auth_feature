import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_dialog.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return AppDialog(
      icon: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 106.w,
            height: 106.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: AppColors.linearGradientFBTT,
            ),
          ),
          Container(
            width: 100.w,
            height: 100.h,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.check,
              color: AppColors.springRain,
              size: 36.r,
            ),
          ),
        ],
      ),
     
     
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return AppColors.linearGradientFLTR.createShader(
                Rect.fromLTRB(0, 0, bounds.width, bounds.height),
              );
            },
            child: Text(
              'Success!',
              style: AppStyles.bold22Cabin.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Congratulations! You have been',
            style: AppStyles.medium18Cabin.copyWith(
              color: AppColors.nobel,
            ),
          ),
          Text(
            'successfully authenticated',
            style: AppStyles.medium18Cabin.copyWith(
              color: AppColors.nobel,
            ),
          ),
        ],
      ),
      actions: [
        AppButton(
          width: 168.w,
          height: 32.h,
          text: 'Continue',
          onTap: () {
            Get.back();
          },
        ),
      ],
    );
  }
}
