abstract class AppPaths {
  // TODO doing this to make sure we can use getters - or maybe not even needed
  // const PathConstants._();

  static String get tabContainerPath => "/";
  static String get teamsPath => "/teams";
  static String get playersPath => "/players";

  static String playerPath({required String? playerId}) {
    final String id = playerId ?? "id";

    return "$playersPath/$id";
  }

  static String teamPath({required String? teamId}) {
    final String id = teamId ?? ":id";

    return "$teamsPath/$id";
  }
}
