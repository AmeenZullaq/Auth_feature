import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppShadows {
  static List<BoxShadow>? singUpShadow = [
    BoxShadow(
      blurRadius: 300,
      color: const Color(0xFFB6E5B9).withOpacity(.3),
      offset: Offset(50.w, 256.h),
    ),
    BoxShadow(
      blurRadius: 200,
      offset: Offset(225.w, 595.h),
      color: const Color(0xFFB0EBB4),
    ),
  ];
}
