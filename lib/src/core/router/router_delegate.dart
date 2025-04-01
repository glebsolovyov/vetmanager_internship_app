import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';
import 'package:vetmanager_internship_app/src/core/screens/home_screen.dart';
import 'package:vetmanager_internship_app/src/core/screens/visit_screen.dart';
import 'package:vetmanager_internship_app/src/core/screens/visits_screen.dart';

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
        //TODO home
        MaterialPage(child: HomeScreen()),
        if (_currentRouteConfig.path == '/visits')

          //TODO visits
          MaterialPage(
            child: VisitsScreen(),
            arguments: _currentRouteConfig.arguments,
          ),
        if (_currentRouteConfig.path == '/visit')
          //TODO visit
          MaterialPage(
            child: VisitScreen(),
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
