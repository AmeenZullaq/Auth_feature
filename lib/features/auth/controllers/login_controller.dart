import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/reusable_widgets/custom_circle_indicator.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/services/get_storage.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_dialog.dart';
import 'package:healthy_food_app/features/auth/data/data_sources/login_remote_data.dart';
import 'package:healthy_food_app/features/auth/views/widgets/false_dialog.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final LogInRemoteData logInRemoteData = LogInRemoteData(
    Get.find<ApiService>(),
  );

  Future<void> logIn() async {
    showingDialog(
      Get.context!,
      widget: const CustomCircleIndicator(),
    );
    var result = await logInRemoteData.logInRemoteData(
      email: emailController.text,
      password: passwordController.text,
      mobileNumber: mobileNumberController.text,
    );
    result.fold(
      (failure) {
        Navigator.pop(Get.context!);
        showingDialog(
          Get.context!,
          widget: const FalseDialog(),
        );
      },
      (logInModel) {
        Navigator.pop(Get.context!);
        getStorage.write(kToken, logInModel.token);
        Get.offNamed(Pages.homeView);
      },
    );
  }

  void validateLogInFields() {
    if (formKey.currentState!.validate()) {
      logIn();
    } else {}
  }

  @override
  void onClose() {
    emailController.dispose();
    mobileNumberController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
