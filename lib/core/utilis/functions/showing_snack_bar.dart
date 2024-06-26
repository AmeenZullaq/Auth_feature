import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showingSnackBar({required String text}) {
  ScaffoldMessenger.of(Get.context!).showSnackBar(
    SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 2),
    ),
  );
}
