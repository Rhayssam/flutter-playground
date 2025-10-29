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

    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
    primary: Color(0xFF0460C6),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFFC2E5FF),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFFD0303),
    onError: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFEBEBEB),
    onPrimaryContainer: Color(0xFF000000),
  );

  static final ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primaryFixed: primaryFixed,
    secondaryFixed: secondaryFixed,
    onSecondaryFixed: onSecondaryFixed,

    surface: Color(0xFF121317),
    onSurface: Color(0xFFFBF8EF),
    primary: Color(0xFF1774DA),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF165399),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFFF4E4E),
    onError: Color(0xFFF9F9F9),
    primaryContainer: Color(0xFF1C1E27),
    onPrimaryContainer: Color(0xFFFFFFFF),
  );
}
