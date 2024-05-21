import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_dialog.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';

class FalseDialog extends StatelessWidget {
  const FalseDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      icon: Image.asset(
        width: 87.w,
        height: 82.h,
        color: AppColors.greenFA0,
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
    );
  }
}
