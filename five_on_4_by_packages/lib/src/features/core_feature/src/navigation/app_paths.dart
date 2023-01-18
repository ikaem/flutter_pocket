abstract class AppPaths {
  // TODO doing this to make sure we can use getters - or maybe not even needed
  // const PathConstants._();

  static String get tabContainerPath => "/";
  static String get matchesPath => "/matches";
  static String get playersPath => "/players";

  static String playerPath({required String? playerId}) {
    final String id = playerId ?? "id";

    return "$playersPath/$id";
  }

  static String matchPath({required String? matchId}) {
    final String id = matchId ?? "id";

    return "$matchesPath/$id";
  }
}
