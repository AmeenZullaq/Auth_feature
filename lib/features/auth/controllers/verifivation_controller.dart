import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/utilis/constants/app_status.dart';
import 'package:healthy_food_app/features/auth/data/data_sources/otp_remote_data.dart';
import 'package:healthy_food_app/features/auth/data/models/verification_model.dart';

class VerificationController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController otpController = TextEditingController();

  late final String errMessage;
  late final VerificationModel otpCode;
  AppStatus? status;

  final OtpRemoteData otpRemoteData = OtpRemoteData(
    Get.find<ApiService>(),
  );

  Future<void> otpVerification() async {
    status = AppStatus.loading;
    var result = await otpRemoteData.otpVerification(
      otpCode: otpController.text,
    );
    result.fold(
      (failure) {
        status = AppStatus.failure;
        errMessage = failure.errMessage;
      },
      (otpCode) {
        status = AppStatus.success;
        this.otpCode = otpCode;
      },
    );
    update();
  }

  void validateOtpField() {
    if (formKey.currentState!.validate()) {
      otpVerification();
    } else {}
  }

  @override
  void onClose() {
    otpController.dispose();
    super.onClose();
  }
}
