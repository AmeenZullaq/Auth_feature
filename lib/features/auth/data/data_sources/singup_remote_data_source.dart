import 'package:dio/dio.dart';
import 'package:healthy_food_app/constants.dart';
import 'package:healthy_food_app/core/errors/failure.dart';
import 'package:healthy_food_app/core/errors/server_failure.dart';
import 'package:healthy_food_app/core/services/api_service.dart';
import 'package:healthy_food_app/features/auth/data/models/singup_model.dart';
import 'package:dartz/dartz.dart';

class SingUpRemoteDataSource {

  final ApiService apiService;
  SingUpRemoteDataSource(this.apiService);

  Future<Either<Failure, SingUpModel>> singUp({
    required String userName,
    required String email,
    required String password,
    required String confirmPassword,
    required String mobileNumber,
  }) async {
    try {
      Map<String, dynamic> data = await apiService.post(
        endPoint: singUpEndPoint,
        confirmPassword: confirmPassword,
        email: email,
        mobileNumber: mobileNumber,
        password: password,
        userName: userName,
      );
      return right(
        SingUpModel.fromJson(data),
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
