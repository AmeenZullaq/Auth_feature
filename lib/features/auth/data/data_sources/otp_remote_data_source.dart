import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/errors/failure.dart';
import 'package:healthy_food_app/core/errors/server_failure.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/features/auth/data/models/otp_model.dart';

class OtpRemoteDataSource {
  final ApiService apiService;
  OtpRemoteDataSource(this.apiService);

  Future<Either<Failure, OtpModel>> otpVerification({
    required String email,
    required String otpCode,
  }) async {
    try {
      Map<String, dynamic> data = await apiService.post(
        endPoint: otpEndPoint,
        email: email,
      );
      return right(
        OtpModel.fromJson(data),
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
