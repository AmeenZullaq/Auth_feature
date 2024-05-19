import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:healthy_food_app/features/auth/views/login_view.dart';
import 'package:healthy_food_app/features/auth/views/singup_view.dart';
import 'package:healthy_food_app/features/splash/views/splash_view.dart';

abstract class Routes {
  static const String splashView = '/';
  static const String logInView = '/logInView';
  static const String singUpView = '/singUpView';
  static const String authenticatedView = '/authenticatedView';
}

abstract class Pages {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: Routes.splashView,
      page: () => const SplashView(),
    ),
    GetPage(
      name: Routes.logInView,
      page: () => const LogInView(),
    ),
    GetPage(
      name: Routes.singUpView,
      page: () => const SingUpView(),
    ),
    // GetPage(
    //   name: Routes.authenticatedView,
    //   page: () => const AuthenticatedView(),
    // ),
  ];
}
