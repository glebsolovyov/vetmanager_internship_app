import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/extensions/context_extension.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';

/// {@template home_screen}
/// HomeScreen widget.
/// {@endtemplate}
class HomeScreen extends StatelessWidget {
  /// {@macro home_screen}
  const HomeScreen({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    // ModalRoute.settingsOf(context).arguments;
    return Center(
      child: ElevatedButton(
        onPressed: () => context.router
            .push(AppRoute(path: '/visits', arguments: {'1': 'fdsafsd'})),
        child: Text('aaaa'),
      ),
    );
  }
}
