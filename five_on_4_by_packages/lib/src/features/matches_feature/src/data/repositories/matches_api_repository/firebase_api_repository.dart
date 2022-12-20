import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/data.dart';

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
