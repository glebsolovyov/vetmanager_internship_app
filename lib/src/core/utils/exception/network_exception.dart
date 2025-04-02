import 'package:vetmanager_internship_app/src/core/utils/exception/base_exception.dart';

/// A list of possible network errors.
enum NetworkError {
  /// The request timed out.
  timedOut,

  /// The connection timed out.
  connectionTimedOut,

  /// The connection was lost.
  internetDisconnected,

  /// Other error.
  other,
}

/// A base class for all network exceptions.
class NetworkException extends AppException {
  final NetworkError error;

  /// Creates an instance of [NetworkException].
  NetworkException({
    required this.error,
    super.code,
    super.stackTrace,
    super.message,
  });
}
