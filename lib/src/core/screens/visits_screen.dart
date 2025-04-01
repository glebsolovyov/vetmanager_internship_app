import 'package:flutter/material.dart';

/// {@template visits_screen}
/// VisitsScreen widget.
/// {@endtemplate}
class VisitsScreen extends StatelessWidget {
  /// {@macro visits_screen}
  const VisitsScreen({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.settingsOf(context)?.arguments as Map<String, Object?>?;
    return Center(
      child: Text(arguments?['1'].toString() ?? ''),
    );
  }
}
