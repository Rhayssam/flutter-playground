import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/theme/theme_controller.dart';
import 'package:get/get.dart';

class SwitchThemeModeIconButton extends StatelessWidget {
  const SwitchThemeModeIconButton({
    super.key,
    required this.themeController,
  });
  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final isDark = themeController.themeMode == ThemeMode.dark;
        return IconButton(
          onPressed: themeController.switchThemeMode,
          icon: Icon(
            isDark ? Icons.wb_sunny : Icons.dark_mode,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        );
      },
    );
  }
}
