import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/reusable_widgets/app_button.dart';
import 'package:healthy_food_app/core/reusable_widgets/padding.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/assets.dart';
import 'package:healthy_food_app/features/auth/views/widgets/forget_password.dart';
import 'package:healthy_food_app/features/auth/views/widgets/login_fields.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Image.asset(
            Assets.imagesLoginHealthy,
            height: 300.h,
          ),
          const LoginFields(),
          SizedBox(
            height: 20.h,
          ),
          SymetricPadding(
            horizontal: 36,
            child: AppButton(
              onTap: () {},
              text: 'Log in',
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          const ForgetPassword(),
          SizedBox(
            height: 75.h,
          ),
          SymetricPadding(
            horizontal: 36,
            child: AppButton(
              text: 'Create new account',
              borderWidth: 2,
              buttonColor: AppColors.green5B9.withOpacity(.3),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
