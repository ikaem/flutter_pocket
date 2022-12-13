import 'package:matches_feature/src/data/data_sources/matches_api/api.dart';
import 'package:matches_feature/src/data/dtos/match_api_dto/api_dto.dart';
import 'package:matches_feature/src/data/repositories/matches_api_repository/api_repository.dart';

class MatchesFirebaseApiRepository implements MatchesApiRepository {
  const MatchesFirebaseApiRepository({
    required this.matchesApi,
  });

  final MatchesApi matchesApi;

  @override
  Future<MatchApiDTO> getMatch(String id) async {
    final dto = await matchesApi.getMatch(id);

    return dto;
  }

  @override
  Future<List<MatchApiDTO>> getMatches() async {
    final dtos = await matchesApi.getMatches();

    return dtos;
  }

  @override
  Future<void> postMatch(Map<String, dynamic> data) async {
    await matchesApi.postMatch(data);
  }
}
