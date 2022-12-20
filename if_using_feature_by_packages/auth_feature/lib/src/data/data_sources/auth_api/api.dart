import 'package:auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';

abstract class AuthApi {
  Future<AuthApiDTO> login({
    required String email,
    required String password,
  });

  Future<void> logout();
}
