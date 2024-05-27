import 'package:get/get.dart';
import 'package:healthy_food_app/features/auth/controllers/verifivation_controller.dart';

class VerificationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationController>(() => VerificationController(), fenix: true);
  }
}
