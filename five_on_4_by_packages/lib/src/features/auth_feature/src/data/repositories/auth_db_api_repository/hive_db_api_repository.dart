import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';

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
