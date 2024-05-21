import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    this.icon,
    this.content,
    this.actions,
  });

  final Widget? icon;
  final Widget? content;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      actionsAlignment: MainAxisAlignment.center,
      surfaceTintColor: AppColors.white,
      shadowColor: AppColors.black,
      actionsOverflowAlignment: OverflowBarAlignment.center,
      contentTextStyle: AppStyles.medium16Cabin.copyWith(
        color: AppColors.green014,
      ),
      icon: icon,
      content: content,
      actions: actions,
    );
  }
}
