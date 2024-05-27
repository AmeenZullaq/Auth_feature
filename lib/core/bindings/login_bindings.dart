import 'package:get/get.dart';
import 'package:healthy_food_app/features/auth/controllers/login_controller.dart';

class LogInBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
  }
}
