import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.buttonColor,
    this.width,
    this.onTap,
    this.borderWidth,
    this.borderColor,
    this.height,
    this.textStyle,
  });

  final String text;
  final Color? buttonColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final Function()? onTap;
  final double? borderWidth;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 38.h,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.celadon,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            width: borderWidth ?? 1,
            color: borderColor ?? AppColors.summerGreen,
          ),
        ),
        child: Text(
          text,
          style: textStyle ?? AppStyles.regular16Mantaga,
        ),
      ),
    );
  }
}
