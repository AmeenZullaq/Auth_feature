import 'package:get/get.dart';
import 'package:healthy_food_app/features/auth/controllers/singup_controller.dart';

class SingUpBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingUpController>(
      () => SingUpController(),
      fenix: true,
    );
  }
}
