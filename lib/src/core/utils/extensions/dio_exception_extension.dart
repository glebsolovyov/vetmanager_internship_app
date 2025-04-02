import 'dart:io';

import 'package:dio/dio.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/network_exception.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/server_exception.dart';

extension DioExceptionExtension on DioException {
  NetworkException toNetworkException() {
    switch (type) {
      case DioExceptionType.connectionError:
        return NetworkException(error: NetworkError.internetDisconnected);

      case DioExceptionType.connectionTimeout:
        return NetworkException(error: NetworkError.connectionTimedOut);

      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return NetworkException(error: NetworkError.timedOut);

      case DioExceptionType.unknown:
        return NetworkException(error: NetworkError.other);

      default:
        if (response?.statusCode != HttpStatus.internalServerError) {
          if (errorMessage != null) {
            return ServerException(
              error: NetworkError.other,
              message: errorMessage,
            );
          }
        }

        return NetworkException(error: NetworkError.other);
    }
  }

  /// Get the error message from the response.
  String? get errorMessage => response?.data?['error'] as String?;
}
