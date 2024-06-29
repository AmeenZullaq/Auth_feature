import 'package:healthy_food_app/constants.dart';
import '../../services/get_storage.dart';

abstract class ManagerToken {
  static Future<void> setToken({required String token}) async {
    await getStorage.write(kToken, token);
  }

  static Future<String> getToken() async {
    return await getStorage.read(kToken);
  }

  static Future deleteToken() async {
    await getStorage.remove(kToken);
  }
}
