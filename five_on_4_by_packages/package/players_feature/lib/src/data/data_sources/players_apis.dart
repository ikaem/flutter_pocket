import 'package:core_feature/core_feature.dart';
import 'package:players_feature/players_feature.dart';

class PlayersApis {
  PlayersApis({
    required this.fireStore,
  });

  final FireStore fireStore;

  late final PlayersApi playersApi = FireStorePlayersApi(fireStore: fireStore);
}
