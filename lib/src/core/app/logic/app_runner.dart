import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:vetmanager_internship_app/src/core/app/widget/app.dart';
import 'package:vetmanager_internship_app/src/core/di/injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/core/logger/app_bloc_observer.dart';
import 'package:vetmanager_internship_app/src/core/logger/app_error_handlers.dart';
import 'package:vetmanager_internship_app/src/core/logger/logger.dart';

final class AppRunner {
  AppRunner();

  Future<void> initializeAndRun() async {
    // Initialize Flutter
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize logger
    Logger.root.level = Level.ALL;
    Logger.root.addHandler(
      ConsoleLogHandler(const LoggingOptions()),
    );

    // Override platform error logging
    FlutterError.onError = logFlutterError;
    WidgetsBinding.instance.platformDispatcher.onError =
        logPlatformDispatcherError;

    // Setup bloc observer
    Bloc.observer = AppBlocObserver(Logger.root);

    // Initialize injectable dependencies
    injectDependencies();

    // Run this app
    runApp(const App());
  }
}
