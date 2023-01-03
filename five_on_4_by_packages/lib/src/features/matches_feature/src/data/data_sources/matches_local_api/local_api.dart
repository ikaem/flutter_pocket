import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_local_dto/local_dto.dart';

abstract class MatchesLocalApi {
  Future<void> saveMatch(MatchLocalDTO dto);
  Future<void> saveMatches(Map<String, MatchLocalDTO> dtos);
  Future<MatchLocalDTO> getMatch(String itemId);
  // TODO figure out pagiantion lager for this
  Future<List<MatchLocalDTO>> getMatches();
}
