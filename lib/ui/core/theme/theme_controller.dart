import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutterplayground/data/services/local_storage/session/user_session_storage.dart';

class ThemeController extends GetxController {
  final UserSessionStorage _storage;
  ThemeController(
    this._storage,
  );

  final Rx<ThemeMode> _themeMode = ThemeMode.system.obs;

  bool get isDarkMode => themeMode == ThemeMode.dark;
  ThemeMode get themeMode => _themeMode.value;

  void switchThemeMode() {
    if (_themeMode.value == ThemeMode.dark) {
      _themeMode.value = ThemeMode.light;
    } else {
      _themeMode.value = ThemeMode.dark;
    }
    _applyThemeMode(_themeMode.value);
  }

  void _applyThemeMode(ThemeMode themeMode) {
    _updateSystemUIOverlayStyle();
    Get.changeThemeMode(themeMode);
  }

  void syncTheme(Brightness brightness) {
    ThemeMode? themeMode = _storage.getThemeMode();
    themeMode ??= _getThemeByBrightness(brightness);

    _themeMode.value = themeMode;
    _applyThemeMode(themeMode);
  }

  ThemeMode _getThemeByBrightness(Brightness brightness) {
    return brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
  }

  void _updateSystemUIOverlayStyle() {
    if (_themeMode.value == ThemeMode.dark) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    }
  }
}
