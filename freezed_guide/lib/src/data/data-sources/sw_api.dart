class SwApi {
  static const apiBaseUrl = "swapi.dev";
  static const apiBasePath = "/api/";

  Uri person(int id) {
    return Uri(
      scheme: "https",
      host: apiBasePath,
      path: "${apiBasePath}people/$id",
    );
  }
}
