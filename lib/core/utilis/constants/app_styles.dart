import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';
import 'package:pinput/pinput.dart';

abstract class AppStyles {
  /// App TextStyles ...
  static TextStyle medium16Cabin = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cabin',
    color: AppColors.springRain,
  );
  static TextStyle medium20Cabin = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cabin',
    color: AppColors.camarone,
  );
  static TextStyle medium32Cabin = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cabin',
    color: AppColors.camarone,
  );
  static TextStyle medium48Cabin = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cabin',
  );

  static TextStyle regular14Cabin = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cabin',
    color: AppColors.springRain,
  );
  static TextStyle medium14Cabin = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cabin',
  );
  static TextStyle medium18Cabin = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cabin',
  );
  static TextStyle medium12Cabin = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cabin',
    color: AppColors.camarone,
  );
  static TextStyle bold22Cabin = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Cabin',
  );
  static TextStyle regular16Mantaga = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montaga',
    color: AppColors.camarone,
  );
  static TextStyle regular13Mantaga = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montaga',
    color: AppColors.camarone,
  );
  static TextStyle regular12Mantaga = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montaga',
    color: AppColors.camarone,
  );
  static TextStyle regular20Mantaga = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montaga',
  );
  static TextStyle regular22Mantaga = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montaga',
  );
  static TextStyle bold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF757575),
  );

  /// outLineInputBoreder styles ...
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

  /// PinPut OTP style...
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
}
