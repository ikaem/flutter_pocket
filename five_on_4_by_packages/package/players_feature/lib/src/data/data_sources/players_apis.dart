import 'package:core_feature/core_feature.dart';
import 'package:players_feature/players_feature.dart';

// TODO not sure if this should stay here -
class PlayersApis {
  PlayersApis({
    required this.fireStore,
  });

  final FireStore fireStore;

  late final PlayersApi playersApi = FireStorePlayersApi(fireStore: fireStore);
}
