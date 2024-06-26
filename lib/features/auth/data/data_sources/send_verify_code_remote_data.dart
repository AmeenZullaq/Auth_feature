import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/errors/failure.dart';
import 'package:healthy_food_app/core/errors/server_failure.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/features/auth/data/models/send_verify_code_model.dart';

class SendVerifyCodeRemoteData {
  final ApiService apiService;

  SendVerifyCodeRemoteData(this.apiService);

  Future<Either<Failure, SendVerifyCodeModel>> sendVerifyCodeRemoteData() async {
    try {
      Map<String, dynamic> data = await apiService.post(
        endPoint: reSendEndPoint,
        headers: {
          'Accept': 'application/json',
        },
      );
      return right(
        SendVerifyCodeModel.fromJson(data),
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
