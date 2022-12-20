import 'package:auth_feature/src/data/data_sources/auth_api/auth_api.dart';
import 'package:auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';
import 'package:auth_feature/src/data/repositories/auth_api_repository/auth_api_repository.dart';

class AuthMockApiRepository implements AuthApiRepository {
// TODO remove this eventually, the mock

  const AuthMockApiRepository({
    required this.authApi,
  });

  final AuthApi authApi;

  @override
  Future<AuthApiDTO> login({
    // TODO probably should have a type for this
    required String email,
    required String password,
  }) async {
    final AuthApiDTO dto = await authApi.login(
      email: email,
      password: password,
    );

    return dto;
  }
}
