// TODO this should be freezed
// TODO this should be changed with all members eventually

import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';

class Auth {
  const Auth({
    required this.id,
    required this.name,
    required this.token,
  });

  final String id;
  final String name;
  final String token;

  factory Auth.fromApiDTO(AuthApiDTO dto) {
    return Auth(
      id: dto.id,
      name: dto.name,
      token: dto.token,
    );
  }

  factory Auth.fromDbApiDTO(AuthDbApiDTO dto) {
    return Auth(
      id: dto.id,
      name: dto.name,
      token: dto.token,
    );
  }

  factory Auth.fromKeyStoreDTO(AuthKeyStoreDTO dto) {
    return Auth(
      id: dto.id,
      name: dto.name,
      token: dto.token,
    );
  }
}
