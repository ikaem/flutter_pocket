import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';

abstract class AuthKeyStoreApi {
  const AuthKeyStoreApi();

  Future<void> upsertAuth({
    required String id,
    required String name,
    // TODO we possibly dont need token if work with firebase
    required String? token,
  });

  Future<AuthDbApiDTO>? getAuth();
  Future<void> deleteAuth();
}
