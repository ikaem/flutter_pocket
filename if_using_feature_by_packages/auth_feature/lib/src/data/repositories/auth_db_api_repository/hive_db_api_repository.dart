import 'package:auth_feature/src/data/data_sources/auth_db_api/auth_db_api.dart';
import 'package:auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';
import 'package:auth_feature/src/data/repositories/auth_db_api_repository/auth_db_api_repository.dart';

class AuthHiveDBApiRepository implements AuthDBApiRepository {
  const AuthHiveDBApiRepository({
    required this.authDbApi,
  });

  final AuthDbApi authDbApi;

  @override
  Future<void> login(AuthDbApiDTO dto) async {
    await authDbApi.login(dto);
  }

  @override
  Future<void> logout() async {
    await authDbApi.logout();
  }

  @override
  Future<AuthDbApiDTO> getAuth() async {
    final AuthDbApiDTO dto = await authDbApi.getAuth();

    return dto;
  }

  @override
  Stream<AuthDbApiDTO?> observeAuth() {
    final stream = authDbApi.observeAuth();

    return stream;
  }
}
