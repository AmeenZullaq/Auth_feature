import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/reusable_widgets/custom_circle_indicator.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/services/get_storage.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/functions/manager_token.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_dialog.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_snack_bar.dart';
import 'package:healthy_food_app/features/auth/data/data_sources/log_out_remote_data.dart';
import 'package:healthy_food_app/features/auth/views/widgets/wrong_dialog.dart';

class LogOutController extends GetxController {
  final LogOutRemoteData logOutRemoteData =
      LogOutRemoteData(Get.find<ApiService>());

  Future<void> logOut() async {
    showingDialog(
      Get.context!,
      widget: const CustomCircleIndicator(),
    );
    var result = await logOutRemoteData.logOutRemoteData();
    result.fold(
      (failure) {
        Navigator.pop(Get.context!);
        showingSnackBar(text: failure.errMessage);
      },
      (logOutMode) {
        Navigator.pop(Get.context!);
        ManagerToken.deleteToken();
        Get.offNamed(Pages.logInView);
      },
    );
  }
}
