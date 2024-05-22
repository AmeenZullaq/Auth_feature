import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:healthy_food_app/features/auth/controllers/login_controller.dart';
import 'package:healthy_food_app/features/auth/controllers/verifivation_controller.dart';
import 'package:healthy_food_app/features/auth/controllers/singup_controller.dart';

class AuthBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    Get.lazyPut<SingUpController>(() => SingUpController(), fenix: true);
    Get.lazyPut<VerificationController>(() => VerificationController(), fenix: true);
  }
}
