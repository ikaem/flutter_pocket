import "package:freezed_annotation/freezed_annotation.dart";
import 'package:matches_feature/src/data/data.dart';

part "model.freezed.dart";

@freezed
class Match with _$Match {
  const factory Match({
    required String id,
    required String name,
  }) = _Match;

  factory Match.fromApiDTO(MatchApiDTO dto) {
    final Match match = Match(
      id: dto.id,
      name: dto.name,
    );

    return match;
  }
}
