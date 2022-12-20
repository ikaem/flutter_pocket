// TODO this should be freezed

import 'package:auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';
import 'package:auth_feature/src/domain/domain.dart';
import "package:hive/hive.dart";

part "db_api_dto.g.dart";

@HiveType(typeId: 0)
class AuthDbApiDTO {
  const AuthDbApiDTO({
    required this.id,
    required this.name,
    required this.token,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String token;

  factory AuthDbApiDTO.fromAuth(Auth auth) {
    final AuthDbApiDTO dto = AuthDbApiDTO(
      id: auth.id,
      name: auth.name,
      token: auth.token,
    );

    return dto;
  }

  factory AuthDbApiDTO.fromAuthApiDTO(AuthApiDTO auth) {
    final AuthDbApiDTO dto = AuthDbApiDTO(
      id: auth.id,
      name: auth.name,
      token: auth.token,
    );

    return dto;
  }
}
