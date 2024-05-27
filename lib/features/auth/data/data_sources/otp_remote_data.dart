import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/errors/failure.dart';
import 'package:healthy_food_app/core/errors/server_failure.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/features/auth/data/models/verification_model.dart';

class OtpRemoteData {
  final ApiService apiService;
  OtpRemoteData(this.apiService);

  Future<Either<Failure, VerificationModel>> otpVerification({
    required String otpCode,
  }) async {
    try {
      Map<String, dynamic> data = await apiService.post(
        endPoint: otpEndPoint,
        data: {},
      );
      return right(
        VerificationModel.fromJson(data),
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
