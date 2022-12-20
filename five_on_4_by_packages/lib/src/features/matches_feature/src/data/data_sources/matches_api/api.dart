import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';

abstract class MatchesApi {
  Future<MatchApiDTO> getMatch(String id);
  // TODO this will need bunch of params later
  Future<List<MatchApiDTO>> getMatches();
  Future<void> postMatch(Map<String, dynamic> data);
}
