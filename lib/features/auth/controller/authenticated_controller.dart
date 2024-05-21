import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticatedController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }
}
