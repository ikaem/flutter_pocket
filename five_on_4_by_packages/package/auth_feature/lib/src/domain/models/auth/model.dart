// TODO this should be freezed
// TODO this should be changed with all members eventually

import 'package:auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';

class Auth {
  const Auth({
    required this.name,
    required this.token,
  });

  final String name;
  final String token;

  factory Auth.fromApiDTO(AuthApiDTO dto) {
    return Auth(
      name: dto.name,
      token: dto.token,
    );
  }
}
