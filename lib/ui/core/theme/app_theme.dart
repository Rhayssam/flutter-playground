import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme({required this.colorScheme});

  static ThemeData light() {
    return AppTheme(colorScheme: AppColors.lightColorScheme).themeData;
  }

  static ThemeData dark() {
    return AppTheme(colorScheme: AppColors.darkColorScheme).themeData;
  }

  final ColorScheme colorScheme;

  ThemeData get themeData => ThemeData(
    colorScheme: colorScheme,
    textTheme: textTheme,
    // elevatedButtonTheme: elevatedButtonTheme,
    // outlinedButtonTheme: outlinedButtonTheme,
    // inputDecorationTheme: inputDecorationTheme,
    // dropdownMenuTheme: dropdownMenuTheme,
    // checkboxTheme: checkboxTheme,
    // bannerTheme: bannerTheme,
    // dialogTheme: dialogTheme,
    // extensions: [
    //   AppColorsExtensions(),
    // ],
  );

  TextTheme get textTheme => TextTheme(
    displayLarge: GoogleFonts.poppins(fontSize: 57, fontWeight: FontWeight.normal),
    displayMedium: GoogleFonts.poppins(fontSize: 45, fontWeight: FontWeight.normal),
    displaySmall: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.normal),
    headlineLarge: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.normal),
    headlineMedium: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.normal),
    headlineSmall: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.normal),
    titleLarge: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.normal),
    titleMedium: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.normal),
    titleSmall: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal),
    bodyLarge: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal),
    labelLarge: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal),
    labelMedium: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal),
    labelSmall: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.normal),
  );
}
