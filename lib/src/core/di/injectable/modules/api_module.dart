import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/core/constants/constants.dart';
import 'package:vetmanager_internship_app/src/core/di/injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/core/utils/interceptors/auth_interceptor.dart';
import 'package:vetmanager_internship_app/src/core/utils/interceptors/headers_interceptor.dart';
import 'package:vetmanager_internship_app/src/core/utils/storage/secure_storage.dart';

@module
abstract class ApiModule {
  @injectable
  Dio get client => Dio(BaseOptions(contentType: defaultContentType))
    ..interceptors.addAll(
      [
        AuthInterceptor(secureStorage: getIt<SecureStorage>()),
        HeadersInterceptor(),
      ],
    );
}
