import 'package:flutterplayground/data/services/local_storage/shared_preferences/shared_preferences_local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLocalStorageImpl implements SharedPreferencesLocalStorage {
  SharedPreferencesLocalStorageImpl._({
    required SharedPreferences prefs,
  }) : _preferences = prefs;

  final SharedPreferences _preferences;

  static Future<SharedPreferencesLocalStorage> init() async {
    return SharedPreferencesLocalStorageImpl._(
      prefs: await SharedPreferences.getInstance(),
    );
  }

  @override
  Future<bool> clear() => _preferences.clear();

  @override
  bool containsKey(String key) => _preferences.containsKey(key);

  @override
  bool? getBool(String key) => _preferences.getBool(key);

  @override
  double? getDouble(String key) => _preferences.getDouble(key);

  @override
  int? getInt(String key) => _preferences.getInt(key);

  @override
  Set<String> getKeys() => _preferences.getKeys();

  @override
  String? getString(String key) => _preferences.getString(key);

  @override
  List<String>? getStringList(String key) => _preferences.getStringList(key);

  @override
  Future<void> reload() => _preferences.reload();

  @override
  Future<bool> remove(String key) => _preferences.remove(key);

  @override
  Future<bool> setBool(String key, bool value) => _preferences.setBool(key, value);

  @override
  Future<bool> setDouble(String key, double value) => _preferences.setDouble(key, value);

  @override
  Future<bool> setInt(String key, int value) => _preferences.setInt(key, value);

  @override
  Future<bool> setString(String key, String value) => _preferences.setString(key, value);

  @override
  Future<bool> setStringList(String key, List<String> value) =>
      _preferences.setStringList(key, value);
}
