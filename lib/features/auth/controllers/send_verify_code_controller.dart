import 'package:get/get.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/utilis/functions/showing_snack_bar.dart';
import 'package:healthy_food_app/features/auth/data/data_sources/send_verify_code_remote_data.dart';

class SendVerifyCodeController extends GetxController {
  final SendVerifyCodeRemoteData sendVerifyCodeRemoteData =
      SendVerifyCodeRemoteData(
    Get.find<ApiService>(),
  );

  Future<void> verifyCode() async {
    var result = await sendVerifyCodeRemoteData.sendVerifyCodeRemoteData();
    result.fold(
      (failure) {
        showingSnackBar(text: failure.errMessage);
      },
      (sendVerifyCodeModel) {
        showingSnackBar(text: sendVerifyCodeModel.message);
      },
    );
  }
}
