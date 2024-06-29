import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/errors/failure.dart';
import 'package:healthy_food_app/core/errors/server_failure.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/utilis/functions/manager_token.dart';
import 'package:healthy_food_app/features/auth/data/models/log_out_model.dart';

class LogOutRemoteData {
  final ApiService apiService;

  LogOutRemoteData(this.apiService);

  Future<Either<Failure, LogOutModel>> logOutRemoteData() async {
    try {
      Map<String, dynamic> data = await apiService.post(
        endPoint: logOutEndPoint,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${ManagerToken.getToken()}',
        },
      );
      return right(LogOutModel.fromJson(data));
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
