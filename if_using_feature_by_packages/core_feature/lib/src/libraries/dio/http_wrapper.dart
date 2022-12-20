import 'package:core_feature/core_feature.dart';
import 'package:dio/dio.dart';

// TODO not sure if this should be here

class HttpWrapper {
  HttpWrapper({
    required this.appLogger,
  });

  final AppLogger appLogger;

  // TODO dio needs better configuration here
  // TODO dio will need interceptors as well
  // TOOD dio will need some error handling too
  final _client = Dio();

// TODO will need arguments here as well
  Future<T> get<T>(
    // TODO here we can create a model for http request - jsut args
    HttpRequestArgs args,
    T Function(dynamic data) dataBuilder,
  ) async {
    try {
      final Uri uri = Uri(
        scheme: args.scheme,
        host: args.apiBaseUrl,
        path: "${args.apiContextPath}/${args.apiEndpoint}",
        queryParameters: args.queryParameters,
      );

// issue with this is that we dont get proper map it seems
// we get json response
// TODO can i request json back in the response
// this actually retrurns text type

      // final options = Options(
      //   method: "get",
      //   headers: {'Content-Type': 'application/json;charset=UTF-8'},
      //   responseDecoder: (responseBytes, options, responseBody) {
      //     // TODO test
      //     final what = utf8.decode(responseBytes);
      //     // TODO test
      //     return "hello";
      //   },
      // );

      final response = await _client.getUri(
        uri,
        // options: options,
      );

      // final response = await _client.get("https://swapi.dev/api/people/1");

      // final response = await _client.get(
      //   uri.toString(),
      //   queryParameters: args.queryParameters,
      // );
      // TODO test
      final T data = dataBuilder(response.data);

      return data;
    } catch (e) {
      appLogger.log(
          logLevel: LogLevel.info,
          message: "Error retrieving data",
          error: e.toString());

      if (e is! DioError) {
        throw ApiGetException(
          message: "Data fetch error: ${e.toString()}",
          statusCode: null,
        );
      }

      throw ApiGetException(
        message: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
