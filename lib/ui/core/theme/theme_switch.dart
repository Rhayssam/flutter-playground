import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/theme/theme_controller.dart';
import 'package:get/get.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  ThemeController get _controller => Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _controller.isDarkMode,
      onChanged: (_) {
        _controller.switchThemeMode();
      },
    );
  }
}
