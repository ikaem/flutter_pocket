dataimport 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> setKey({
    required String key,
    required String value,
  }) async {
    await _secureStorage.write(
      key: key,
      value: value,
    );
  }

  Future<void> deleteKey({
    required String key,
  }) async {
    await _secureStorage.delete(
      key: key,
    );
  }

  Future<String?> getKeyValue({
    required String key,
  }) async {
    final String? value = await _secureStorage.read(
      key: key,
    );

    return value;
  }
}
