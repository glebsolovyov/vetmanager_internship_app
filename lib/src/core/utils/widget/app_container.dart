import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';

/// {@template app_container}
/// AppContainer widget.
/// {@endtemplate}
class AppContainer extends StatelessWidget {
  /// {@macro app_container}
  const AppContainer({
    required this.child,
    super.key, // ignore: unused_element
  });

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.colors.onPrimary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
