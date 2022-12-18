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
  Future<PlayerApiDTO> getOne(String id) async {
    // TODO this should probably pass a data builder function to firestore class to build data immediately
    try {
      final response =
          await fireStore.getCollectionItem(fireStoreCollection, id);

      if (response == null) {
        throw FireStoreGetException(
          message: "Unable to retrieve player",
          // TODO probably dont need status code here
          statusCode: 500,
        );
      }

      // TODO maybe even create a function that will add id there

      final dto = PlayerApiDTO.fromJson(response);

      // const newPlayer = PlayerDTO(id: "1", nickname: "test");

      return dto;
    } catch (e) {
      // TODO check
      // TODO remove try catch
      rethrow;
    }
  }

  @override
  Future<List<PlayerApiDTO>> getMany(String? searchTerm) async {
    // TODO for now, lets not sure sesarch term
    try {
      final response = await fireStore.getCollectionItems(
        fireStoreCollection,
      );

      final dtos = response.map((e) => PlayerApiDTO.fromJson(e)).toList();

      // const newPlayer = PlayerDTO(id: "1", nickname: "test");

      return dtos;
    } catch (e) {
      // TODO check
      // TODO remove try catch
      rethrow;
    }
  }

  @override
  Future<List<PlayerApiDTO>> searchMany(String searchTerm) async {
    // TODO for now, lets not sure sesarch term
    try {
      final response = await fireStore.filterCollectionItems(
        fireStoreCollection,
        "nickname",
        searchTerm,
      );

      final dtos = response.map((e) => PlayerApiDTO.fromJson(e)).toList();

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
