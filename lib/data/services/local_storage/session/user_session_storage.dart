import 'package:flutter/material.dart';
import 'package:flutterplayground/data/services/local_storage/shared_preferences/shared_preferences_local_storage.dart';

class UserSessionStorage {
  final SharedPreferencesLocalStorage _storage;
  UserSessionStorage(this._storage);

  final String _themeMode = "theme_mode";

  Future<void> setThemeMode(ThemeMode mode) async {
    String value = mode.name; // 'light', 'dark', 'system'
    await _storage.setString(_themeMode, value);
  }

  ThemeMode? getThemeMode() {
    final value = _storage.getString(_themeMode);
    if (value == null) return null;

    switch (value) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }
}
