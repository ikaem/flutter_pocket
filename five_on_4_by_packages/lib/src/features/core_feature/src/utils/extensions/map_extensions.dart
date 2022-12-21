extension MapCustomExtensions on Map {
  Map<dynamic, dynamic> addKey(String key, dynamic value) {
    final map = this;

    map[key] = value;

    return map;
  }
}
