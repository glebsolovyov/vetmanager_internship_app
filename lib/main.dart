import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';

void main() {
  runApp(RouterScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = RouterScope.of(context);
    return MaterialApp.router(
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
