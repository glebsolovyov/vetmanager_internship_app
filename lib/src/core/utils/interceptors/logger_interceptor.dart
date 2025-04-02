import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class LoggerInterceptor implements Interceptor {
  final bool logRequest;
  final bool logRequestHeaders;
  final bool logRequestBody;
  final bool logResponse;
  final bool logResponseHeaders;
  final bool logResponseBody;
  final bool logError;
  final Logger? logger;
  final List<String> excludedHeaders;

  LoggerInterceptor({
    this.logger,
    this.logRequest = true,
    this.logRequestHeaders = true,
    this.logRequestBody = true,
    this.logResponse = true,
    this.logResponseHeaders = true,
    this.logResponseBody = true,
    this.logError = true,
    this.excludedHeaders = const [],
  });

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    if (logError) {
      final buffer = StringBuffer();
      final startTime = err.requestOptions.extra['startTime'] as DateTime?;
      final duration = startTime == null
          ? const Duration()
          : DateTime.now().difference(startTime);

      buffer
          .writeln('${err.requestOptions.method} <- ${err.requestOptions.uri} '
              '${err.response?.statusCode} ${err.response?.statusMessage} '
              '(${duration.inMilliseconds}ms)');

      if (logResponseHeaders && !(err.response?.headers.isEmpty ?? true)) {
        buffer.writeln();
        err.response?.headers.forEach((key, v) {
          if (!excludedHeaders.contains(key)) {
            buffer.writeln('$key: $v');
          }
        });
      }

      if (logRequestBody) {
        if (err.response?.data != null) {
          buffer.writeln();
          buffer.write(stringify(err.response?.data));
        }
      }

      logger?.severe(buffer.toString());
    }

    handler.next(err);
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    if (logRequest) {
      final buffer = StringBuffer();
      buffer.writeln('${options.method} -> ${options.uri}');
      if (logRequestHeaders && options.headers.isNotEmpty) {
        buffer.writeln('┏━━ Headers');
        options.headers.forEach((key, v) {
          if (!excludedHeaders.contains(key)) {
            buffer.writeln('┃ $key: $v');
          }
        });
        buffer.writeln('┗━━');
      }
      if (logRequestBody) {
        if (options.data != null) {
          buffer.writeln('┏━━ Body');
          stringify(options.data)
              ?.split('\n')
              .forEach((v) => buffer.writeln('┃ $v'));
          buffer.writeln('┗━━');
        }
      }
      logger?.info(buffer.toString());
    }

    options.extra['startTime'] = DateTime.now();
    handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    if (logResponse) {
      final buffer = StringBuffer();
      final startTime = response.requestOptions.extra['startTime'] as DateTime;
      final duration = DateTime.now().difference(startTime);

      buffer.writeln(
          '${response.requestOptions.method} <- ${response.requestOptions.uri} '
          '${response.statusCode} ${response.statusMessage} '
          '(${duration.inMilliseconds}ms)');

      if (logResponseHeaders && !response.headers.isEmpty) {
        buffer.writeln('┏━━ Headers');
        response.headers.forEach((key, v) {
          if (!excludedHeaders.contains(key)) {
            buffer.writeln('┃ $key: $v');
          }
        });
        buffer.writeln('┗━━');
      }

      if (logRequestBody) {
        if (response.data != null) {
          buffer.writeln('┏━━ Body');
          stringify(response.data)
              ?.split('\n')
              .forEach((v) => buffer.writeln('┃ $v'));
          buffer.writeln('┗━━');
        }
      }

      logger?.info(buffer.toString());
    }

    handler.next(response);
  }

  String? stringify(dynamic message) {
    if (message is Map || message is Iterable) {
      var encoder = const JsonEncoder.withIndent('  ');
      return encoder.convert(message);
    } else {
      if (message is String) {
        return message;
      } else {
        return message.toString();
      }
    }
  }
}
