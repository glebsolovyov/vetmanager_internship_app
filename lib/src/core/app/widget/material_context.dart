part of 'app.dart';

/// {@template material_context}
/// This widget sets locales, theme and routing.
/// {@endtemplate}
class MaterialContext extends StatelessWidget {
  /// {@macro material_context}
  const MaterialContext({super.key});

  @override
  Widget build(BuildContext context) {
    final router = RouterScope.of(context);
    return MaterialApp.router(
      theme: $lightThemeData,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
