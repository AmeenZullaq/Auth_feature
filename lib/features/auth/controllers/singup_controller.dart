import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/reusable_widgets/custom_circle_indicator.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/services/get_storage.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/functions/manager_token.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_dialog.dart';
import 'package:healthy_food_app/features/auth/data/data_sources/singup_remote_data.dart';
import 'package:healthy_food_app/features/auth/views/widgets/wrong_dialog.dart';

class SingUpController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final SingUpRemoteData singUpRemoteData = SingUpRemoteData(
    Get.find<ApiService>(),
  );

  Future<void> singUp() async {
    showingDialog(
      Get.context!,
      widget: const CustomCircleIndicator(),
    );
    var result = await singUpRemoteData.singUpRemoteData(
      userName: userNameController.text,
      email: emailController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
      mobileNumber: mobileNumberController.text,
    );
    result.fold(
      (failure) {
        Navigator.pop(Get.context!);
        showingDialog(
          Get.context!,
          widget: const WrongDialog(),
        );
      },
      (singUpModel) {
        Navigator.pop(Get.context!);
        ManagerToken.setToken(token: singUpModel.token);
        Get.offNamed(Pages.homeView);
      },
    );
  }

  void validateSingUpFields() {
    if (formKey.currentState!.validate()) {
      singUp();
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
// 963 985562216
