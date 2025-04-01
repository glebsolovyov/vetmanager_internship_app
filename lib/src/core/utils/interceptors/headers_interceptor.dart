import 'package:dio/dio.dart';

class HeadersInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      "DOMAIN": "devppp94",
      "X-MOBILE-APP": "mobileapp",
      "CLINIC-ID": "1",
    });

    handler.next(options);
  }
}
