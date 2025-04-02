import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

/// Logs a flutter error with [LogLevel.error].
void logFlutterError(FlutterErrorDetails details) {
  Logger.root.severe(
    details.toString(),
    details.exception,
    details.stack,
  );
}

/// Logs a platform dispatcher error with [LogLevel.error].
bool logPlatformDispatcherError(Object error, StackTrace stackTrace) {
  Logger.root.severe(
    'Platform dispatcher error',
    error,
    stackTrace,
  );
  return true;
}
