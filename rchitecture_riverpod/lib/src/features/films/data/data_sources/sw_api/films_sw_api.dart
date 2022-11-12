// lib\src\features\films\data\repositories\data_sources\films_api.dart

import 'package:rchitecture_riverpod/src/application/services/api_handler/api_handler.dart';

class FilmsSwApi {
  FilmsSwApi(
      // TODO often, this might need an api key, so we would pass it here, and assign it a s a class member
      );

  static const String _apiBaseUrl = "swapi.dev";
  static const String _apiPath = "/api/";

// this is to return a specific film uri, to be used to get that movie with some http client
  Uri film(int id) {
    // final Uri uri = _buildUri(endpoint: "films/$id");
    final Uri uri = ApiHandler.buildUri(
      apiBaseUrl: _apiBaseUrl,
      apiPath: _apiPath,
      endpoint: "films/$id",
    );

    return uri;
  }

  Uri searchFilms(String searchTerm) {
    final Uri uri = _buildUri(
      endpoint: "films/",
      parametersBuilder: buildFilmsSearchParameters(searchTerm),
    );

    return uri;
  }

  // this is uril builder that will be reused
  // maybe also move to api handler or something
  Uri _buildUri({
    required String endpoint,
    Map<String, dynamic>? parametersBuilder,
  }) {
    return Uri(
      scheme: "https",
      host: _apiBaseUrl,
      path: "$_apiPath$endpoint",
      queryParameters: parametersBuilder,
    );
  }

  // now we just have a function to to build url - we just want build it
// this returns URI - and it requires endpoint, and parameters gfunction - which is a function that will generate query params
  Map<String, dynamic> buildFilmsSearchParameters(String searchTerm) {
    return {
      "search": searchTerm,
    };
  }
}
