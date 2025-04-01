import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoute> {
  @override
  Future<AppRoute> parseRouteInformation(
          RouteInformation routeInformation) async =>
      AppRoute(path: routeInformation.uri.path);

  @override
  RouteInformation? restoreRouteInformation(AppRoute configuration) {
    switch (configuration.path) {
      case '/unknown':
        return RouteInformation(uri: Uri.parse('/unknown'));
      case '/visits':
        return RouteInformation(uri: Uri.parse('/visits'));
      case '/visit':
        return RouteInformation(uri: Uri.parse('/visit'));
      case '/':
        return RouteInformation(uri: Uri.parse('/'));
    }
    return null;
  }
}
