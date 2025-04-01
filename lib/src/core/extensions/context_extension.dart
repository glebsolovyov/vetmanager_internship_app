import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';
import 'package:vetmanager_internship_app/src/core/router/router_delegate.dart';

extension ContextExtension on BuildContext {
  AppRouterDelegate get router => RouterScope.of(this).routerDelegate;
}
