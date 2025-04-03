import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/app/theme.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';

part 'material_context.dart';

/// {@template app}
/// [App] is an entry point to the application.
/// {@endtemplate}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => RouterScope(
        child: const MaterialContext(),
      );
}
