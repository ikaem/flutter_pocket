import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';

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
  Future<AuthDbApiDTO>? getAuth() async {
    final List<String?> authValues = await Future.wait([
      secureStorage.getKeyValue(key: storageIdKey),
      secureStorage.getKeyValue(key: storageNameKey),
      secureStorage.getKeyValue(key: storageTokenKey),
    ]);

    // TODO make construcotor to make this from auth values
    // final String? id = authValues

    final bool isValidAuth = authValues.every((element) => element != null);
  }

  @override
  Future<void> upsertAuth({
    required String id,
    required String name,
    required String? token,
  }) async {
    // TODO: implement upsertAuth
    throw UnimplementedError();
  }
}
