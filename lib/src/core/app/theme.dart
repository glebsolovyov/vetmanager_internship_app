import 'package:flutter/material.dart';

/// Light theme of the application.
final $lightThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  scaffoldBackgroundColor: Color(0xFFEEF1F4),
  textTheme: _lightTextTheme,
);

final _fontFamily = 'Manrope';

final _lightColorScheme = ColorScheme.light(
  primary: const Color(0xFF64A6FF),
  onPrimary: Colors.white,
  secondary: const Color(0xFFE0E0E0),
  onSecondary: Colors.black,
);

final _lightTextTheme = TextTheme(
  titleLarge: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1.2,
    fontFamily: _fontFamily,
  ),
  titleMedium: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.2,
    fontFamily: _fontFamily,
  ),
  titleSmall: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.2,
    fontFamily: _fontFamily,
  ),
  bodyMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    fontFamily: _fontFamily,
  ),
  bodySmall: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    fontFamily: _fontFamily,
  ),
  labelSmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
    fontFamily: _fontFamily,
  ),
);
