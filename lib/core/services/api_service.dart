import 'package:dio/dio.dart';
import 'package:healthy_food_app/core/utilis/constants/app_endpoints.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get(AppEndPoints.baseUrl + endPoint);
    return response.data;
  }

  Future<Map<String, dynamic>> delete({required String endPoint}) async {
    Response response = await dio.delete(AppEndPoints.baseUrl + endPoint);
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    required Map<String, dynamic> headers,
    Map<String, dynamic>? data,
  }) async {
    Response response = await dio.post(
      AppEndPoints.baseUrl + endPoint,
      data: data,
      options: Options(
        headers: headers,
      ),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> put({
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    Map<String, dynamic> headers = {};
    Response response = await dio.post(
      AppEndPoints.baseUrl + endPoint,
      data: data,
      options: Options(
        headers: headers,
      ),
    );
    return response.data;
  }
}
