import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:healthy_food_app/core/bindings/confirm_code_bindings.dart';
import 'package:healthy_food_app/core/bindings/log_out_bindings.dart';
import 'package:healthy_food_app/core/bindings/login_bindings.dart';
import 'package:healthy_food_app/core/bindings/singup_bindings.dart';
import 'package:healthy_food_app/core/bindings/Send_Verify_Code_bindings.dart';
import 'package:healthy_food_app/core/services/get_middleware.dart';
import 'package:healthy_food_app/features/auth/views/verification_view.dart';
import 'package:healthy_food_app/features/auth/views/login_view.dart';
import 'package:healthy_food_app/features/auth/views/singup_view.dart';
import 'package:healthy_food_app/features/home/views/home_view.dart';
import 'package:healthy_food_app/features/splash/views/splash_view.dart';

abstract class Pages {
  static const String splashView = '/';
  static const String logInView = '/logInView';
  static const String singUpView = '/singUpView';
  static const String vrificationView = '/verificationView';
  static const String homeView = '/homeView';

  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: Pages.splashView,
      page: () => const SplashView(),
    ),
    GetPage(
      name: Pages.logInView,
      page: () => const LogInView(),
      bindings: [
        LogInBindings(),
        SendVerifyCodeBindings(),
      ],
      middlewares: [
        NavigationState(),
      ],
    ),
    GetPage(
      name: Pages.singUpView,
      page: () => const SingUpView(),
      binding: SingUpBindings(),
    ),
    GetPage(
      name: Pages.vrificationView,
      page: () => const VerificationView(),
      bindings: [
        SendVerifyCodeBindings(),
        ConfirmCodeBindings(),
      ],
    ),
    GetPage(
      name: Pages.homeView,
      page: () => const HomeView(),
      binding: LogOutBindings(),
    ),
  ];
}
