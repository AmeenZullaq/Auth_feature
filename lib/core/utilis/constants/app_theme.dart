import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';
import 'package:pinput/pinput.dart';

abstract class AppTheme {
  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
  );
  static PinTheme defaultPinTheme = PinTheme(
    height: 39.h,
    width: 42.w,
    textStyle: AppStyles.bold16,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: const Color(0xFFDDDDDD),
        width: 1.6,
      ),
    ),
  );
  static PinTheme submittedPinTheme = PinTheme(
    height: 39.h,
    width: 42.w,
    textStyle: AppStyles.bold16,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: AppColors.camarone,
        width: 1.8,
      ),
    ),
  );
  static PinTheme errorPinTheme = PinTheme(
    height: 39.h,
    width: 42.w,
    textStyle: AppStyles.bold16,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.red.withOpacity(.5),
        width: 1.6,
      ),
    ),
  );
  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.red.withOpacity(.5),
      width: 1,
    ),
  );
  static OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: Color(0xFFD7DDDB),
      width: 1,
    ),
  );
}
