import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_dialog.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';

class FalseDialog extends StatelessWidget {
  const FalseDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      iconPadding: const EdgeInsets.all(8),
      icon: Image.asset(
        width: 87.w,
        height: 82.h,
        color: AppColors.summerGreen,
        Assets.imagesSorry2,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Sorry!',
            style: AppStyles.medium32Cabin,
          ),
          Text(
            'Incorrect password or email',
            style: AppStyles.medium20Cabin,
          ),
        ],
      ),
      actions: [
        AppButton(
          width: 113.w,
          height: 28.h,
          text: 'Back',
          textStyle: AppStyles.regular12Mantaga,
          onTap: () {
            Get.back();
          },
        ),
      ],
    );
  }
}
