import 'dart:developer';

import 'package:flutterplayground/data/services/local_storage/shared_preferences/shared_preferences_local_storage.dart';

class ThemeSessionStorage {
  final SharedPreferencesLocalStorage _storage;
  ThemeSessionStorage(this._storage);

  final String _darkThemeEnabled = "darkThemeEnabled";

  Future<void> setThemeDarkEnabled(bool enabled) async {
    log("SET DarkThemeEnabled: $enabled");
    await _storage.setBool(_darkThemeEnabled, enabled);
  }

  bool getThemeDarkEnabled() {
    final value = _storage.getBool(_darkThemeEnabled) ?? false;
    log("GET DarkThemeEnabled: $value");
    return value;
  }

  Future<void> clearThemeDarkPreference() async {
    log("CLEAR DarkThemeEnabled");
    await _storage.remove(_darkThemeEnabled);
  }
}
