import 'base_exception.dart';

/// An exception that is thrown when an unexpected error occurs.
class UnexpectedException extends AppException {
  /// Creates an instance of [UnexpectedException].
  UnexpectedException({
    super.stackTrace,
    super.message,
  });
}
