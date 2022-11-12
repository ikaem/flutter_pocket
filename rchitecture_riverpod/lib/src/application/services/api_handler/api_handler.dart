import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:rchitecture_riverpod/src/utils/exceptions/api_exception/api_exception.dart';

class ApiHandler {
  static Future<T> handleApiGetResponse<T>({
    required Uri url,
    required Client client,
    required T Function(dynamic data) dataBuilder,
  }) async {
    //
    final response = await client.get(url);

    try {
      switch (response.statusCode) {
        case HttpStatus.ok:
          {
            final data = jsonDecode(response.body);
            return dataBuilder(data);
          }
        case HttpStatus.unauthorized:
          {
            throw const ApiException.invalidApiKey();
          }
        case HttpStatus.notFound:
          {
            throw const ApiException.notFound();
          }
        default:
          {
            throw const ApiException.unknown();
          }
      }
    } on SocketException {
      throw const ApiException.noInternetConnection();
    }
  }

  static Uri buildUri({
    required String apiBaseUrl,
    required String apiPath,
    required String endpoint,
    Map<String, dynamic>? parametersMap,
  }) {
    return Uri(
      scheme: "https",
      host: apiBaseUrl,
      path: "$apiPath$endpoint",
      queryParameters: parametersMap,
    );
  }
}
