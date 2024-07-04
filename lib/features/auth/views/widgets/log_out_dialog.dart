import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_dialog.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/auth/controllers/log_out_controller.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LogOutController logOutController = Get.find<LogOutController>();
    return AppDialog(
      icon: Image.asset(
        width: 69.w,
        height: 69.h,
        Assets.imagesLogOut,
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Oh no! You\'re leaving...',
          ),
          Text(
            'Are you sure?',
          ),
        ],
      ),
      actions: [
        AppButton(
          width: 113.w,
          height: 28.h,
          text: 'No',
          textStyle: AppStyles.regular12Mantaga,
          onTap: () {
            Get.back();
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        AppButton(
          width: 113.w,
          height: 28.h,
          text: 'Yes, Log Me out',
          textStyle: AppStyles.regular12Mantaga,
          onTap: () {
            Navigator.pop(context);
            logOutController.logOut();
          },
        ),
      ],
    );
  }
}
