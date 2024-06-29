import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:healthy_food_app/core/services/api_service.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<Dio>(
      Dio(),
    );
    Get.put<ApiService>(
      ApiService(
        Get.find<Dio>(),
      ),
    );
  }
}
