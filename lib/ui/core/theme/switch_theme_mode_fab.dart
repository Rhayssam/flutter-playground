import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/theme/theme_controller.dart';
import 'package:get/get.dart';

class SwitchThemeModeFab extends StatelessWidget {
  const SwitchThemeModeFab({
    super.key,
    required this.themeController,
  });

  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isDark = themeController.themeMode == ThemeMode.dark;
      return FloatingActionButton(
        onPressed: themeController.switchThemeMode,
        tooltip: isDark ? 'Modo claro' : 'Modo escuro',
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          isDark ? Icons.wb_sunny : Icons.dark_mode,
          color: Colors.white,
        ),
      );
    });
  }
}
