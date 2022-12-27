import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/data_sources/matches_local_api/matches_local_api.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_local_dto/local_dto.dart';

class MatchesAppLocalApi extends MatchesLocalApi {
  MatchesAppLocalApi({
    required this.database,
  });

  final DB database;

  @override
  Future<MatchLocalDTO> getMatch(String itemId) async {
    final MatchLocalDTO dto = await database.getBoxItem<MatchLocalDTO>(
      boxName: DB.kMatchesBox,
      itemId: itemId,
    );

    return dto;
  }

  @override
  Future<List<MatchLocalDTO>> getMatches(String itemId) async {
    final dtos =
        await database.getBoxItems<MatchLocalDTO>(boxName: DB.kMatchesBox);

    return dtos.toList();
  }

  @override
  Future<void> saveMatch(MatchLocalDTO dto) async {
    await database.addBoxItem<MatchLocalDTO>(
      boxName: DB.kPlayersBox,
      item: dto,
      itemId: dto.id,
    );
  }

  @override
  Future<void> saveMatchs(Map<String, MatchLocalDTO> dtos) async {
    await database.addBoxItems<MatchLocalDTO>(
      boxName: DB.kPlayersBox,
      items: dtos,
    );
  }
}
