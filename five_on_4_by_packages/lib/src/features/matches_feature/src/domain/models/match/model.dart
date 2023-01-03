import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_local_dto/local_dto.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_remote_dto/match_remote_dto.dart';
import "package:freezed_annotation/freezed_annotation.dart";

part "model.freezed.dart";

@freezed
class Match with _$Match {
  const factory Match({
    required String id,
    required String name,
  }) = _Match;

  factory Match.fromRemoteDTO(MatchRemoteDTO dto) {
    final Match match = Match(
      id: dto.id,
      name: dto.name,
    );

    return match;
  }

  factory Match.fromLocalDTO(MatchLocalDTO dto) {
    final Match match = Match(
      id: dto.id,
      name: dto.name,
    );

    return match;
  }
}
