import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:healthy_food_app/core/errors/failure.dart';
import 'package:healthy_food_app/core/errors/server_failure.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/core/utilis/constants/app_endpoints.dart';
import 'package:healthy_food_app/core/utilis/functions/manager_token.dart';
import 'package:healthy_food_app/features/auth/data/models/confirm_code_model.dart';

class ConfirmCodeRemoteData {
  final ApiService apiService;

  ConfirmCodeRemoteData(this.apiService);

  Future<Either<Failure, ConfirmCodeModel>> confirmCodeRemoteData() async {
    try {
      Map<String, dynamic> data = await apiService.post(
        endPoint: AppEndPoints.confirmCodeEndPoint,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${ManagerToken.getToken()}',
        },
      );
      return right(
        ConfirmCodeModel.fromJson(data),
      );
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioExcepion(e),
        );
      }
      return left(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
