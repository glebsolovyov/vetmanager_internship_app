import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:stack_trace/stack_trace.dart';

/// Extension to add a given [LogHandler] to a [Logger] as a listener
/// for log records.
extension LoggerExtension on Logger {
  Logger addHandler(LogHandler handler) {
    if (kReleaseMode && !handler.logInRelease) {
      return this;
    }
    onRecord.listen((record) => handler.publish(record));
    return this;
  }
}

/// A LogHandler object takes log messages from a Logger and exports them.
/// It might for example, write them to a console or write them to a file,
/// or send them to a network logging service, or forward them to an OS log,
/// or whatever.
abstract class LogHandler {
  /// Whether to log in release builds.
  bool get logInRelease;

  /// Publishes a LogRecord.
  void publish(LogRecord record);
}

/// Defines the format of a log message.
///
/// This is a function type that takes a [LogRecord] and
/// [LoggingOptions] and returns a formatted string.
typedef LogFormatter = String Function(
  LogRecord record,
  LoggingOptions options,
);

/// Configuration options for logging behavior.
///
/// Allows customization of how log messages are formatted and displayed.
class LoggingOptions {
  /// Constructs an instance of [LoggingOptions].
  ///
  /// - [showTime]: Whether to include the timestamp in the log message.
  ///   Defaults to `true`.
  /// - [showSource]: Whether to include a source of the message in the the log.
  ///   Defaults to `true`.
  /// - [logInRelease]: Whether logging is enabled in release builds.
  ///   Defaults to `false`.
  /// - [coloredOutput]: Whether to use colored text for the console output.
  ///   Defaults to `true`.
  /// - [formatter]: An optional custom formatter for log messages.
  ///   If not provided, a default formatter is used.
  const LoggingOptions({
    this.showTime = true,
    this.showSource = true,
    this.coloredOutput = true,
    this.logInRelease = false,
    this.formatter,
  });

  /// Whether to include the timestamp in the log message.
  final bool showTime;

  /// Whether to include a source of the log message.
  final bool showSource;

  /// Whether to use colored text for the console output.
  final bool coloredOutput;

  /// Whether logging is enabled in release builds.
  final bool logInRelease;

  /// An optional custom formatter for log messages.
  ///
  /// If not provided, a default formatter is used.
  final LogFormatter? formatter;
}

class ConsoleLogHandler implements LogHandler {
  final LoggingOptions options;

  ConsoleLogHandler(this.options);

  @override
  bool get logInRelease => options.logInRelease;

  @override
  void publish(LogRecord record) {
    final formattedMessage = options.formatter != null
        ? options.formatter!(
            record,
            options,
          )
        : _defaultFormatter(record);

    log(formattedMessage);
  }

  String _defaultFormatter(LogRecord record) {
    final time = options.showTime ? record.time.toIso8601String() : '';
    final source = options.showSource ? record.loggerName : '';
    final color = options.coloredOutput ? record.level.color : '';
    final level = record.level;
    final content = record.message;
    final stackTrace = record.stackTrace;
    final error = record.error;
    final buffer = StringBuffer();

    buffer.write('$color$time $source [${level.name}] $content');

    if (error != null) {
      buffer.writeln();
      buffer.write(error);
    }

    if (stackTrace != null) {
      buffer.writeln();
      buffer.write(Trace.from(stackTrace).terse);
    }

    return buffer.toString();
  }
}

extension on Level {
  String get color {
    switch (this) {
      case Level.FINE:
      case Level.FINER:
      case Level.FINEST:
        return '\x1b[34m';
      case Level.INFO:
        return '\x1b[32m';
      case Level.WARNING:
        return '\x1b[33m';
      case Level.SEVERE:
      case Level.SHOUT:
        return '\x1b[31m';
      default:
        return '\x1b[0m';
    }
  }
}
