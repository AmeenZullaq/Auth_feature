import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:healthy_food_app/constants.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get('$endPoint$base64Url');
    return response.data;
  }

  Future<Map<String, dynamic>> delete({required String endPoint}) async {
    Response response = await dio.delete('$endPoint$baseUrl');
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    String? userName,
    String? email,
    String? password,
    String? confirmPassword,
    String? mobileNumber,
    String? otpCode,
  }) async {
    Map<String, dynamic> data = {};
    Map<String, dynamic> headers = {};
    Response response = await dio.post(
      '$endPoint$baseUrl',
      data: data,
      options: Options(headers: headers),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> put({
    required String endPoint,
    String? userName,
    String? email,
    String? password,
    String? mobileNumber,
  }) async {
    Map<String, dynamic> data = {};
    Map<String, dynamic> headers = {};
    Response response = await dio.post(
      '$endPoint$base64Url',
      data: data,
      options: Options(headers: headers),
    );
    return response.data;
  }
}
