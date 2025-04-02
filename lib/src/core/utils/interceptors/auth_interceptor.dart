import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:vetmanager_internship_app/src/core/utils/storage/secure_storage.dart';

/// A function that provides an auth token.
typedef AuthTokenProvider = FutureOr<String?> Function();

/// An interceptor that authorizes requests using an auth token.
class AuthInterceptor extends QueuedInterceptor {
  final SecureStorage _secureStorage;

  AuthInterceptor({
    required SecureStorage secureStorage,
  }) : _secureStorage = secureStorage;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final headers = options.headers;

    // If the request already contains an authorization header, then do nothing
    if (headers.hasAuthorizationHeader) {
      return super.onRequest(options, handler);
    }

    /// I wrote this code because I have a test token
    /// this code should not be present in the real code.
    const xToken = '501e0bbac99eb3673e5df715eacd9d0efb5601f5';
    await _secureStorage.write('X-TOKEN', xToken);

    // If the request not contains an authorization header, read from local storage
    try {
      options.headers.authorizationHeader =
          await _secureStorage.read('X-TOKEN');
    } on DioException catch (e) {
      return handler.reject(e, true);
    }

    super.onRequest(options, handler);
  }
}

extension on Map<String, dynamic> {
  /// Whether the headers contains an authorization header.
  bool get hasAuthorizationHeader {
    return containsKey(HttpHeaders.authorizationHeader);
  }

  /// Updates the authorization header with a given token.
  set authorizationHeader(String? token) {
    if (token != null) {
      this['X-TOKEN'] = token;
    } else {
      remove(HttpHeaders.authorizationHeader);
    }
  }
}
