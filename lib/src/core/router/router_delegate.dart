import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';
import 'package:vetmanager_internship_app/src/core/screens/home_screen.dart';
import 'package:vetmanager_internship_app/src/core/screens/admission_screen.dart';
import 'package:vetmanager_internship_app/src/core/screens/admissions_list_screen.dart';

class AppRouterDelegate extends RouterDelegate<AppRoute>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoute> {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  AppRoute _currentRouteConfig = AppRoute(path: '/');

  @override
  AppRoute get currentConfiguration => _currentRouteConfig;

  void push(AppRoute route) {
    _currentRouteConfig = route;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(child: HomeScreen()),
        if (_currentRouteConfig.path == '/admissions_list')
          MaterialPage(
            child: AdmissionListScreen(),
            arguments: _currentRouteConfig.arguments,
          ),
        if (_currentRouteConfig.path == '/admission')
          MaterialPage(
            child: AdmissionScreen(
              id: _currentRouteConfig.arguments?['id'] as String?,
            ),
            arguments: _currentRouteConfig.arguments,
          ),
      ],
      onDidRemovePage: (page) {
        if (page.canPop) {
          return;
        }
        push(AppRoute(path: '/'));
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoute configuration) async {
    push(configuration);
  }
}
