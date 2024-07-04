import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/utilis/constants/app_colors.dart';

void showingSnackBar({required String text}) {
  ScaffoldMessenger.of(Get.context!).showSnackBar(
    SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 4),
      backgroundColor: AppColors.summerGreen,
    ),
  );
}
