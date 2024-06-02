import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/services/get_storage.dart';
import 'package:healthy_food_app/core/utilis/constants/app_status.dart';
import 'package:healthy_food_app/features/auth/data/data_sources/login_remote_data.dart';
import 'package:healthy_food_app/features/auth/data/models/login_model.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController mobileNumberController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  late final LogInModel logInModel;
  late final String errMessage;
  AppStatus? status;

  final LogInRemoteData logInRemoteData = LogInRemoteData(
    Get.find<ApiService>(),
  );

  Future<void> logIn() async {
    status = AppStatus.loading;
    var result = await logInRemoteData.logIn(
      email: emailController.text,
      password: passwordController.text,
      mobileNumber: mobileNumberController.text,
    );
    result.fold(
      (failure) {
        status = AppStatus.failure;
        errMessage = failure.errMessage;
      },
      (logInModel) {
        status = AppStatus.success;
        this.logInModel = logInModel;
        getxStorage.write(token, logInModel.token);
      },
    );
    update();
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
