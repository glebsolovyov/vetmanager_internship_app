import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';

/// {@template home_view}
/// HomeView widget.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              context.router.push(
                AppRoute(path: '/admissions_list'),
              );
            },
            child: Text('aaaa'),
          ),
        ),
      );
}
