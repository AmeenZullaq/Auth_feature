import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';

abstract class AppStyles {
  /// App TextStyles ...
  static TextStyle medium16Cabin = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cabin',
    color: AppColors.green5B0,
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
    color: AppColors.green5B0,
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
    color: AppColors.green014,
  );
  static TextStyle regular13Mantaga = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montaga',
    color: AppColors.green014,
  );
  static TextStyle regular12Mantaga = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montaga',
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
}
