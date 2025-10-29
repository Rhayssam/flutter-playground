import 'package:flutter/material.dart';

final class AppColors {
  static final Color primaryFixed = Color(0xFFB7B7B7);
  static final Color secondaryFixed = Color(0xFF484848);
  static final Color onSecondaryFixed = Color(0xFFF9F9F9);

  static final ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primaryFixed: primaryFixed,
    secondaryFixed: secondaryFixed,
    onSecondaryFixed: onSecondaryFixed,

    surface: Color(0xFFFBF8EF),
    onSurface: Color(0xFF000000),
    primary: Color(0xFFFFD93F),
    onPrimary: Color(0xFF121212),
    secondary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF000000),
    tertiary: Color(0xFF000000),
    onTertiary: Color(0xFFF9F9F9),
    error: Color(0xFFFD0303),
    onError: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFF3F3F3),
    onPrimaryContainer: Color(0xFF000000),
    secondaryContainer: Color(0xFF121212),
    onSecondaryContainer: Color(0xFFFFFFFF),
  );

  static final ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primaryFixed: primaryFixed,
    secondaryFixed: secondaryFixed,
    onSecondaryFixed: onSecondaryFixed,

    surface: Color(0xFF121212),
    onSurface: Color(0xFFFBF8EF),
    primary: Color(0xFFFFD93F),
    onPrimary: Color(0xFF000000),
    secondary: Color(0xFF121212),
    onSecondary: Color(0xFFF9F9F9),
    tertiary: Color(0xFFF9F9F9),
    onTertiary: Color(0xFF121212),
    error: Color(0xFFFF4E4E),
    onError: Color(0xFFF9F9F9),
    primaryContainer: Color(0xFF2A2A2A),
    onPrimaryContainer: Color(0xFFF9F9F9),
    secondaryContainer: Color(0xFFFFD93F),
    onSecondaryContainer: Color(0xFF121212),
  );
}
