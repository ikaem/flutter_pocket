import 'package:players_feature/players_feature.dart';

class PlayersRepositories {
  PlayersRepositories({
    required this.playersApi,
  });

  final PlayersApi playersApi;

  late final PlayersRepository playersRepository =
      FirebasePlayersRepository(api: playersApi);
}
