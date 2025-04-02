import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/core/client/rest_client.dart';
import 'package:vetmanager_internship_app/src/core/utils/constants/constants.dart';
import 'package:vetmanager_internship_app/src/core/di/injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/core/utils/interceptors/auth_interceptor.dart';
import 'package:vetmanager_internship_app/src/core/utils/interceptors/headers_interceptor.dart';
import 'package:vetmanager_internship_app/src/core/utils/interceptors/logger_interceptor.dart';
import 'package:vetmanager_internship_app/src/core/utils/storage/secure_storage.dart';

@module
abstract class ApiModule {
  @injectable
  Dio get client => Dio(
        BaseOptions(
            baseUrl: 'https://mobilebackend.vetmanager.cloud/api/v1',
            contentType: defaultContentType),
      )..interceptors.addAll(
          [
            LoggerInterceptor(),
            AuthInterceptor(secureStorage: getIt<SecureStorage>()),
            HeadersInterceptor(),
          ],
        );

  AppRestClient apiDataSource(Dio dio) => AppRestClient(dio,
      baseUrl: 'https://mobilebackend.vetmanager.cloud/api/v1');
}
