import 'dart:developer';

import 'package:players_feature/src/data/data_sources/players_api/api.dart';
import 'package:players_feature/src/data/dtos/player_dto/dto.dart';
import "package:core_feature/core_feature.dart";

class FireStorePlayersApi implements PlayersApi {
  static const String fireStoreCollection = "players";

  const FireStorePlayersApi({
    required this.fireStore,
  });

  final FireStore fireStore;

  @override
  Future<PlayerDTO?> getOne(String id) async {
    // TODO this should probably pass a data builder function to firestore class to build data immediately
    try {
      final response =
          await fireStore.getCollectionItem(fireStoreCollection, id);

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

  @override
  Future<List<PlayerDTO>> getMany(String? searchTerm) async {
    // TODO for now, lets not sure sesarch term
    try {
      final response = await fireStore.getCollectionItems(
        fireStoreCollection,
      );

      final dtos = response.map((e) => PlayerDTO.fromJson(e)).toList();

      // const newPlayer = PlayerDTO(id: "1", nickname: "test");

      return dtos;
    } catch (e) {
      // TODO check
      // TODO remove try catch
      rethrow;
    }
  }

  @override
  Future<List<PlayerDTO>> searchMany(String searchTerm) async {
    // TODO for now, lets not sure sesarch term
    try {
      final response = await fireStore.filterCollectionItems(
        fireStoreCollection,
        "nickname",
        searchTerm,
      );

      final dtos = response.map((e) => PlayerDTO.fromJson(e)).toList();

      log("this is dtos!!: $dtos");

      // const newPlayer = PlayerDTO(id: "1", nickname: "test");

      return dtos;
    } catch (e) {
      // TODO check
      // TODO remove try catch
      rethrow;
    }
  }
}
