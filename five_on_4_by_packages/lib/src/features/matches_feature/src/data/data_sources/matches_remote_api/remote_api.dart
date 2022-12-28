import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_remote_dto/remote_dto.dart';

abstract class MatchesRemoteApi {
  Future<MatchRemoteDTO> getMatch(String id);
  // TODO this will need bunch of params later
  Future<List<MatchRemoteDTO>> getMatches();
  Future<void> postMatch(Map<String, dynamic> data);
  Future<List<MatchRemoteDTO>> searchMatches({
    required int page,
  });
}
