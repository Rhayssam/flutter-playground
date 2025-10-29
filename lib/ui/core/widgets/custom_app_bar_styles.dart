import 'package:flutter/material.dart';

extension CustomAppBarStyles on ThemeData {
  AppBarTheme get primaryAppBarTheme => AppBarTheme(
    backgroundColor: colorScheme.primary,
    foregroundColor: colorScheme.onPrimary,
    surfaceTintColor: colorScheme.primary,
    centerTitle: true,
    iconTheme: iconTheme.copyWith(
      color: colorScheme.onPrimary,
    ),
    actionsIconTheme: iconTheme.copyWith(
      color: colorScheme.onPrimary,
    ),
    titleTextStyle: textTheme.titleLarge?.copyWith(
      fontWeight: FontWeight.normal,
      color: colorScheme.onPrimary,
    ),
    elevation: 0,
  );

  AppBarTheme get primaryContainerAppBarTheme => AppBarTheme(
    backgroundColor: colorScheme.primaryContainer,
    foregroundColor: colorScheme.onPrimaryContainer,
    surfaceTintColor: colorScheme.primaryContainer,
    centerTitle: true,
    shadowColor: colorScheme.shadow.withValues(alpha: 0.5),
    iconTheme: iconTheme.copyWith(
      color: colorScheme.onPrimaryContainer,
    ),
    actionsIconTheme: iconTheme.copyWith(
      color: colorScheme.onPrimaryContainer,
    ),
    titleTextStyle: textTheme.titleLarge?.copyWith(
      fontWeight: FontWeight.normal,
      color: colorScheme.onPrimaryContainer,
    ),
    elevation: 2,
  );

  AppBarTheme get transparentAppBarTheme => AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    foregroundColor: colorScheme.onSurface,
    centerTitle: true,
    iconTheme: iconTheme.copyWith(
      color: colorScheme.onSurface,
    ),
    actionsIconTheme: iconTheme.copyWith(
      color: colorScheme.onSurface,
    ),
    titleTextStyle: textTheme.titleLarge?.copyWith(
      fontWeight: FontWeight.normal,
      color: colorScheme.onSurface,
    ),
    elevation: 0,
  );

  AppBarTheme get surfaceAppBarTheme => AppBarTheme(
    backgroundColor: colorScheme.surface,
    foregroundColor: colorScheme.onSurface,
    surfaceTintColor: colorScheme.surface,
    centerTitle: true,
    shadowColor: colorScheme.shadow.withValues(alpha: 0.5),
    iconTheme: iconTheme.copyWith(
      color: colorScheme.onSurface,
    ),
    actionsIconTheme: iconTheme.copyWith(
      color: colorScheme.onSurface,
    ),
    titleTextStyle: textTheme.titleLarge?.copyWith(
      fontWeight: FontWeight.normal,
      color: colorScheme.onSurface,
    ),
    elevation: 0,
  );
}
