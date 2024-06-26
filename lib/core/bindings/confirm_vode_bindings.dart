import 'package:get/get.dart';
import 'package:healthy_food_app/features/auth/controllers/confirm_code_controller.dart';

class ConfirmCodeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmCodeController>(
      () => ConfirmCodeController(),
      fenix: true,
    );
  }
}
