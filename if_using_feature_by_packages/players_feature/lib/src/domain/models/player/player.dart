import "package:freezed_annotation/freezed_annotation.dart";

import 'package:players_feature/src/data/dtos/player_dto/dto.dart';

part "player.freezed.dart";

@freezed
class Player with _$Player {
  const factory Player({
    required String id,
    required String nickname,
  }) = _Player;

  factory Player.fromDTO(PlayerApiDTO dto) {
    final player = Player(
      id: dto.id,
      nickname: dto.nickname,
    );

    return player;
  }
}
