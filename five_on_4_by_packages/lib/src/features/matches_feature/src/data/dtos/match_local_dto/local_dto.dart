import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_remote_dto/match_remote_dto.dart';
import 'package:hive/hive.dart';

part "local_dto.g.dart";

@HiveType(typeId: 2)
class MatchLocalDTO {
  const MatchLocalDTO({
    required this.id,
    required this.name,
  });

  factory MatchLocalDTO.fromMatchRemoteDTO(MatchRemoteDTO dto) {
    final MatchLocalDTO matchLocalDTO = MatchLocalDTO(
      id: dto.id,
      name: dto.name,
    );

    return matchLocalDTO;
  }

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;
}
