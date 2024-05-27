import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/utilis/constants/app_status.dart';
import 'package:healthy_food_app/features/auth/data/data_sources/singup_remote_data.dart';
import 'package:healthy_food_app/features/auth/data/models/singup_model.dart';

class SingUpController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController mobileNumberController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController userNameController = TextEditingController();
  late TextEditingController confirmPasswordController =
      TextEditingController();

  late final SingUpModel singUpUserInfo;
  late final String errMessage;
  late AppStatus status;

  final SingUpRemoteData singUpRemoteData = SingUpRemoteData(
    Get.find<ApiService>(),
  );

  Future<void> singUp() async {
    status = AppStatus.loading;
    var result = await singUpRemoteData.singUp(
      userName: userNameController.text,
      email: emailController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
      mobileNumber: mobileNumberController.text,
    );
    result.fold(
      (failure) {
        status = AppStatus.failure;
        errMessage = failure.errMessage;
      },
      (singUpUserInfo) {
        status = AppStatus.success;
        this.singUpUserInfo = singUpUserInfo;
      },
    );
    update();
  }

  void validateSingUpFields() {
    if (formKey.currentState!.validate()) {
    } else {}
  }

  @override
  void onClose() {
    emailController.dispose();
    mobileNumberController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
