// package\players_feature\lib\src\data\dtos\player_dto\player_db.dart

import 'package:five_on_4_by_packages/src/features/players_feature/src/data/dtos/player_dto/dto.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/src/domain/exports.dart';
import "package:hive/hive.dart";

part "db_dto.g.dart";

@HiveType(typeId: 0)
class PlayerDbDTO {
  const PlayerDbDTO({
    required this.id,
    required this.nickname,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String nickname;

  factory PlayerDbDTO.fromPlayer(Player player) {
    final dbDto = PlayerDbDTO(
      id: player.id,
      nickname: player.nickname,
    );

    return dbDto;
  }

  factory PlayerDbDTO.fromApiDTO(PlayerApiDTO apiDTO) {
    final dbDto = PlayerDbDTO(
      id: apiDTO.id,
      nickname: apiDTO.nickname,
    );

    return dbDto;
  }
}
