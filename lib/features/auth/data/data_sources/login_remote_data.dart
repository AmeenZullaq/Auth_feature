import 'package:dio/dio.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/errors/failure.dart';
import 'package:healthy_food_app/core/errors/server_failure.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';

class LogInRemoteData {
  final ApiService apiService;
  LogInRemoteData(this.apiService);

  Future<Either<Failure, LogInModel>> logIn({
    required String email,
    required String password,
    required String mobileNumber,
  }) async {
    try {
      Map<String, dynamic> data = await apiService.post(
        endPoint: singUpEndPoint,
        data: {},
      );
      return right(
        LogInModel.fromJson(data),
      );
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioExcepion(e),
        );
      }
      return left(
        ServerFailure(errMessage: e.toString()),
      );
    }
  }
}
