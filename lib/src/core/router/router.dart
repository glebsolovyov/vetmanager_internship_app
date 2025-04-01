import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/route_info_parser.dart';
import 'package:vetmanager_internship_app/src/core/router/router_delegate.dart';

class AppRoute {
  final String path;

  final Map<String, Object?>? arguments;

  AppRoute({
    required this.path,
    this.arguments,
  });

  @override
  int get hashCode => Object.hash(path, arguments);

  @override
  bool operator ==(Object other) =>
      other is AppRoute &&
      runtimeType == other.runtimeType &&
      path == other.path &&
      arguments == other.arguments;
}

class RouterScope extends InheritedWidget {
  final AppRouterDelegate routerDelegate = AppRouterDelegate();
  final AppRouteInformationParser routeInformationParser =
      AppRouteInformationParser();

  RouterScope({
    super.key,
    required super.child,
  });

  static RouterScope of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RouterScope>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
