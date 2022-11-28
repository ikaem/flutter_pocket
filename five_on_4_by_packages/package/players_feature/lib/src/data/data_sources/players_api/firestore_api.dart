import 'package:players_feature/src/data/data_sources/players_api/api.dart';
import 'package:players_feature/src/data/dtos/player_dto/dto.dart';
import "package:core_feature/core_feature.dart";

class FireStorePlayersApi implements PlayersApi {
  const FireStorePlayersApi({
    required this.fireStore,
  });

  final FireStore fireStore;

  @override
  Future<PlayerDTO?> getOne(String id) async {
    try {
      final response = await fireStore.getCollectionItem("players", id);

      if (response == null) return null;

      // TODO maybe even create a function that will add id there

      final dto = PlayerDTO.fromJson(response);

      // const newPlayer = PlayerDTO(id: "1", nickname: "test");

      return dto;
    } catch (e) {
      // TODO check
      // TODO remove try catch
      rethrow;
    }
  }
}