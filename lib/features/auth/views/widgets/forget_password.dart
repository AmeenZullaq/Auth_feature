import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthy_food_app/core/reusable_widgets/padding.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:healthy_food_app/features/auth/views/widgets/remember_me.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SymetricPadding(
      horizontal: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const RememberMe(),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Forget Password ?',
              style: AppStyles.regular14Cabin.copyWith(
                color: AppColors.green014,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
