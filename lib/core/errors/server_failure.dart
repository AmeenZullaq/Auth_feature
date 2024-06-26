import 'package:dio/dio.dart';
import 'package:healthy_food_app/core/errors/failure.dart';

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioExcepion(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errMessage: 'Connection timeout with ApiServer',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errMessage: 'Send timeout with api server',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errMessage: 'Receive timeout with ApiServer',
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errMessage: 'BadCertificate timeout with api server',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
          response: dioException.response,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errMessage: 'Request to ApiServer was canceld',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          errMessage: 'No Internet Connection',
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          errMessage: 'Opps there was an error, pleas try again',
        );
    }
  }

  factory ServerFailure.fromBadResponse({
    Response<dynamic>? response,
  }) {
    int statusCode = response!.statusCode!;
    if (statusCode == 404) {
      return ServerFailure(
        errMessage: 'Error 400, request not found',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: 'Server Error, pleas try later',
      );
    } else if (statusCode == 400) {
      return ServerFailure(
        errMessage: 'Error 400, Bad request',
      );
    } else if (statusCode == 401) {
      return ServerFailure(
        errMessage: 'Error 401, unauthorized',
      );
    } else if (statusCode == 403) {
      return ServerFailure(
        errMessage: 'Error 403, forbidden',
      );
    } else {
      return ServerFailure(
        errMessage: 'Opps, there was an error, Pleas try again',
      );
    }
  }
}
