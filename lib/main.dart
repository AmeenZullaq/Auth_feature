import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:healthy_food_app/core/services/settings_service.dart';
import 'package:healthy_food_app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync<SettingsService>(() async => SettingsService().init());
  runApp(const MyApp());
}
