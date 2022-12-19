// TODO this should be freezed

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
}
