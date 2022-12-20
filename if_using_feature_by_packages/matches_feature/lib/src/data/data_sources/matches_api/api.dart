import 'package:matches_feature/src/data/dtos/match_api_dto/match_api_dto.dart';

abstract class MatchesApi {
  Future<MatchApiDTO> getMatch(String id);
  // TODO this will need bunch of params later
  Future<List<MatchApiDTO>> getMatches();
  Future<void> postMatch(Map<String, dynamic> data);
}
