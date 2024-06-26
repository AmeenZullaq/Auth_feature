import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/reusable_widgets/custom_circle_indicator.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_bottom_sheet.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_dialog.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_snack_bar.dart';
import 'package:healthy_food_app/features/auth/data/data_sources/confirm_code_remote_data.dart';
import 'package:healthy_food_app/features/auth/views/widgets/success_bottom_sheet.dart';
import 'package:healthy_food_app/features/auth/views/widgets/wrong_dialog.dart';

class ConfirmCodeController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();
  final ConfirmCodeRemoteData confirmCodeRemoteData = ConfirmCodeRemoteData(
    Get.find<ApiService>(),
  );

  Future<void> confirmCode({required String token}) async {
    showingDialog(
      Get.context!,
      widget: const CustomCircleIndicator(),
    );
    var result =
        await confirmCodeRemoteData.confirmCodeRemoteData(token: token);
    result.fold(
      (failure) {
        Navigator.pop(Get.context!);
        showingSnackBar(text: failure.errMessage);
      },
      (confirmCodeModel) {
        Navigator.pop(Get.context!);
        showingBottomSheet(
          Get.context!,
          widget: const SuccessBottomSheet(),
        );
      },
    );
  }
}
