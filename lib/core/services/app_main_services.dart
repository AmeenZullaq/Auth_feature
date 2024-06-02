import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get_storage/get_storage.dart';

class AppMainServices extends GetxService {
  Future<AppMainServices> init() async {
    await GetStorage.init();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return this;
  }
}
