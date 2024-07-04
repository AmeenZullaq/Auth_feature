import 'package:get/get.dart';
import 'package:healthy_food_app/features/auth/controllers/log_out_controller.dart';

class LogOutBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LogOutController(),
      fenix: true,
    );
  }
}
