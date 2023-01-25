import 'package:shared_preferences/shared_preferences.dart';

class KeyValueStorage {
  KeyValueStorage() {
    // _initializeStorage();
  }

  late final SharedPreferences _storage;

  Future<String?> getStringValue(String key) async {
    final String? value = _storage.getString(key);

    return value;
  }

  Future<void> setStringValue(String key, String value) async {
    await _storage.setString(key, value);
  }

// TODO dont forget to initialize
  Future<void> initializeStorage() async {
    SharedPreferences storage = await SharedPreferences.getInstance();
    _storage = storage;
  }
}
