import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/services/get_storage.dart';
import 'package:healthy_food_app/core/utilis/constants/app_routing.dart';

class NavigationState extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (getxStorage.read(token) != null) {
      return const RouteSettings(name: Pages.homeView);
    }
    return null;
  }
}
