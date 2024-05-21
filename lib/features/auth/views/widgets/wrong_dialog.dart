import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_dialog.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';

class WrongDialog extends StatelessWidget {
  const WrongDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      icon: Image(
        width: 66.w,
        height: 66.h,
        image: const AssetImage(
          Assets.imagesWrong,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Oh no!',
            style: AppStyles.regular20Mantaga.copyWith(
              color: AppColors.black,
            ),
          ),
          Text(
            'Something went wrong',
            style: AppStyles.regular16Mantaga.copyWith(
              color: AppColors.black,
            ),
          ),
          Text(
            'Pleas try again',
            style: AppStyles.regular12Mantaga.copyWith(
              color: AppColors.black,
            ),
          ),
        ],
      ),
      actions: [
        AppButton(
          buttonColor: const Color(0xFF103412),
          width: 113.w,
          height: 28.h,
          text: 'Try again',
          textStyle: AppStyles.regular12Mantaga.copyWith(
            color: const Color(0xFFFFFDFD),
          ),
          onTap: () {
            Get.back();
          },
        ),
      ],
    );
  }
}
