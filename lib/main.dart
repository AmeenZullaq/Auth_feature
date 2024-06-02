import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:healthy_food_app/core/services/app_main_services.dart';
import 'package:healthy_food_app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync<AppMainServices>(() => AppMainServices().init());
  runApp(
    const MyApp(),
  );
}
