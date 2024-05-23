import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:healthy_food_app/core/bindings/auth_bindings.dart';
import 'package:healthy_food_app/features/auth/views/verification_view.dart';
import 'package:healthy_food_app/features/auth/views/login_view.dart';
import 'package:healthy_food_app/features/auth/views/singup_view.dart';
import 'package:healthy_food_app/features/splash/views/splash_view.dart';

abstract class Pages {
  static const String splashView = '/';
  static const String logInView = '/logInView';
  static const String singUpView = '/singUpView';
  static const String authenticatedView = '/authenticatedView';

  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: Pages.splashView,
      page: () => const SplashView(),
    ),
    GetPage(
      name: Pages.logInView,
      page: () => const LogInView(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: Pages.singUpView,
      page: () => const SingUpView(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: Pages.authenticatedView,
      page: () => const VerificationView(),
      binding: AuthBindings(),
    ),
  ];
}
