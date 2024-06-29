import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';
import 'package:healthy_food_app/core/utilis/functions/manager_token.dart';

class NavigationState extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (ManagerToken.getToken() != null) {
      return const RouteSettings(name: Pages.homeView);
    }
    return null;
  }
}
