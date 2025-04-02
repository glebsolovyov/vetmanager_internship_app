import 'package:vetmanager_internship_app/src/core/utils/exception/network_exception.dart';

/// A base class for all server side errors.
class ServerException extends NetworkException {
  /// Creates an instance of [ServerException].
  ServerException({
    super.error = NetworkError.other,
    super.code,
    super.message,
  });
}
