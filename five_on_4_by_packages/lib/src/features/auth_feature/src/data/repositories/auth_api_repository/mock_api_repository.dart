import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';

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
