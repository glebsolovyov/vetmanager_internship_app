import 'dart:async';

import 'package:vetmanager_internship_app/src/core/app/logic/app_runner.dart';
import 'package:vetmanager_internship_app/src/core/logger/app_error_handlers.dart';

void main() {
  runZonedGuarded(
    () => AppRunner().initializeAndRun(),
    logPlatformDispatcherError,
  );
}
