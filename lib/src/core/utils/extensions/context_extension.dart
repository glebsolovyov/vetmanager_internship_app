import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';
import 'package:vetmanager_internship_app/src/core/router/router_delegate.dart';

extension ContextExtension on BuildContext {
  AppRouterDelegate get router => RouterScope.of(this).routerDelegate;

  ColorScheme get colors => Theme.of(this).colorScheme;

  TextTheme get textStyles => Theme.of(this).textTheme;
}
