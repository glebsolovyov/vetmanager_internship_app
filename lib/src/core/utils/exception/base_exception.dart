/// Base class for all exceptions in this project.
class AppException implements Exception {
  AppException({
    this.message,
    String? code,
    this.stackTrace,
  }) : code = code ?? 'unknown';

  /// Optional error message.
  final String? message;

  /// Optional error code.
  final String code;

  /// An optional stack trace that allows you to get information
  /// about the calls chain
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppException) return false;
    return other.hashCode == hashCode;
  }

  @override
  int get hashCode => Object.hash(code, message);

  @override
  String toString() {
    String output = '[$code] $message';

    if (stackTrace != null) {
      output += '\n\n$stackTrace';
    }

    return output;
  }
}
