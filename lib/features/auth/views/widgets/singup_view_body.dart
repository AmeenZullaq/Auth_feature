import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/auth/controller/singup_controller.dart';
import 'package:healthy_food_app/features/auth/views/widgets/already_have_account.dart';
import 'package:healthy_food_app/features/auth/views/widgets/my_image.dart';
import 'package:healthy_food_app/features/auth/views/widgets/singup_fields.dart';

class SingUpViewBody extends StatelessWidget {
  const SingUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    /// I will create Binding class later
    /// Now i am just checking
    final SingUpController singUpController = Get.put(SingUpController());
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
        const SingUpFields(),
        SizedBox(
          height: 30.h,
        ),
        const AppButton(
          text: 'Certificate PDF file',
        ),
        SizedBox(
          height: 40.h,
        ),
        AppButton(
          text: 'Sing up',
          onTap: () {
            if (singUpController.formKey.currentState!.validate()) {
              Get.toNamed(Routes.authenticatedView);
            } else {}
          },
        ),
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
