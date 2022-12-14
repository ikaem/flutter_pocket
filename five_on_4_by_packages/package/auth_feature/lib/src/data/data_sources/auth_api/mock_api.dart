import 'package:auth_feature/src/data/data_sources/auth_api/auth_api.dart';
import 'package:auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';

class AuthMockApi implements AuthApi {
  @override
  Future<AuthApiDTO> login({
    required String email,
    required String password,
  }) async {
    // TODO this is just a mock now
    const AuthApiDTO dto = AuthApiDTO(name: "Karlo", token: "Some token");

    return dto;
  }
}
