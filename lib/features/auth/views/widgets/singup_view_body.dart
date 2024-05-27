import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/auth/controllers/singup_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/already_have_account.dart';
import 'package:healthy_food_app/features/auth/views/widgets/my_image.dart';
import 'package:healthy_food_app/features/auth/views/widgets/singup_fields.dart';
import 'package:healthy_food_app/features/auth/views/widgets/singup_get_builder.dart';

class SingUpViewBody extends StatelessWidget {
  const SingUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final SingUpController singUpController = Get.find<SingUpController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          width: 262.w,
          height: 130.h,
          Assets.imagesSingupHealthy,
        ),
        const MyImage(),
        SizedBox(
          height: 40.h,
        ),
        SingUpFields(
          singUpController: singUpController,
        ),
        SizedBox(
          height: 30.h,
        ),
        AppButton(
          width: 170.w,
          height: 37.h,
          buttonColor: AppColors.white,
          borderColor: const Color(0xFFD7DDDB),
          textStyle: AppStyles.medium14Cabin.copyWith(
            color: AppColors.springRain,
          ),
          text: 'Certificate PDF file',
        ),
        SizedBox(
          height: 40.h,
        ),
        const SingUpGetBuilder(),
        SizedBox(
          height: 5.h,
        ),
        const AlreadyHaveAccount(),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
