import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SharedPrefsHelper {
  SharedPrefsHelper(this._prefs);

  final SharedPreferences _prefs;

  String? getString(String key) => _prefs.getString(key);
  Future<bool> setString(String key, String value) =>
      _prefs.setString(key, value);

  int? getInt(String key) => _prefs.getInt(key);
  Future<bool> setInt(String key, int value) => _prefs.setInt(key, value);

  bool? getBool(String key) => _prefs.getBool(key);
  Future<bool> setBool(String key, bool value) => _prefs.setBool(key, value);

  List<String> getStringList(String key) => _prefs.getStringList(key) ?? [];
  Future<bool> setStringList(String key, List<String> value) =>
      _prefs.setStringList(key, value);

  Future<bool> remove(String key) => _prefs.remove(key);
  Future<bool> clear() => _prefs.clear();

  // Progress Tracking Helpers
  List<int> getCompletedNumbers() {
    return getStringList('completed_numbers').map((e) => int.parse(e)).toList();
  }

  Future<void> markNumberAsCompleted(int number) async {
    final list = getCompletedNumbers();
    if (!list.contains(number)) {
      list.add(number);
      await setStringList(
        'completed_numbers',
        list.map((e) => e.toString()).toList(),
      );
    }
  }
}
