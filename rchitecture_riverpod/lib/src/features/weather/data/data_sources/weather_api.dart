import 'package:rchitecture_riverpod/src/application/services/api_handler/api_handler.dart';

class WeatherApi {
  WeatherApi() {
// this is in case we need to pass in some data with initialization of this - somehting like api key for dev aor production maybe?
  }

  static const String _apiBaseUrl = "7timer.info";
  static const String _apiPath = "/bin/astro.php";

  Uri weather({
    required double longitude,
    required double latitude,
  }) {
    final Uri uri = ApiHandler.buildUri(
      apiBaseUrl: _apiBaseUrl,
      apiPath: _apiPath,
      endpoint: "",
      parametersMap: buildWeatherSearchParameters(
        longitude: longitude,
        latitude: latitude,
      ),
    );

    return uri;
  }

// also to be reused this
  // Uri _buildUri({
  //   // todo THIS SHOULD BE ONLY ""
  //   required String endpoint,
  //   Map<String, dynamic>? parametersBuilder,
  // }) {
  //   return Uri
  // }

  Map<String, dynamic> buildWeatherSearchParameters({
    required double longitude,
    required double latitude,
  }) {
    return {
      "lon": longitude.toString(),
      "lat": latitude.toString(),
      "ac": "0",
      "unit": "metric",
      "output": "json",
      "tzshift": "0",
    };
  }
}
