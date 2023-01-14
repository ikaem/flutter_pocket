import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';

// TODO this
class SecureStorageKeyStoreApi extends AuthKeyStoreApi {
  static const storageTokenKey = "auth_token";
  static const storageIdKey = "auth_id";
  static const storageNameKey = "auth_name";

  const SecureStorageKeyStoreApi({
    required this.secureStorage,
  });

  final SecureStorage secureStorage;

  @override
  Future<void> deleteAuth() async {
    await Future.wait([
      secureStorage.deleteKey(key: storageTokenKey),
      secureStorage.deleteKey(key: storageIdKey),
      secureStorage.deleteKey(key: storageNameKey),
    ]);
  }

  @override
  Future<AuthKeyStoreDTO?> getAuth() async {
    final String? id = await secureStorage.getKeyValue(key: storageIdKey);
    final String? name = await secureStorage.getKeyValue(key: storageNameKey);
    final String? token = await secureStorage.getKeyValue(key: storageTokenKey);

    return _generateAuthKeyStoreDTO(
      id: id,
      name: name,
      token: token,
    );
  }

  @override
  Future<void> upsertAuth({
    required String id,
    required String name,
    required String token,
  }) async {
    await Future.wait([
      secureStorage.setKey(key: storageIdKey, value: id),
      secureStorage.setKey(key: storageNameKey, value: name),
      secureStorage.setKey(key: storageTokenKey, value: token),
    ]);
  }

  // TODO test -
  AuthKeyStoreDTO? _generateAuthKeyStoreDTO({
    required String? id,
    required String? name,
    required String? token,
  }) {
    if (id == null) return null;
    if (name == null) return null;
    if (token == null) return null;

    AuthKeyStoreDTO dto = AuthKeyStoreDTO(
      id: id,
      name: name,
      token: token,
    );

    return dto;
  }
}
