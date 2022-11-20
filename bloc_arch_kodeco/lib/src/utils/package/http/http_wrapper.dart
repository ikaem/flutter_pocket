import 'dart:io';

import 'package:http/http.dart';

class HttpWrapper {
  // we could be passing this as an isntance to data source - and always have the same instance
  final client = Client();

  Future<T> get<T>({
    required String apiBaseUrl,
    required String apiContextPath,
    required String apiEndpoint,
    required Map<String, Object>? parameters,
    required Map<String, String>? headers,
    required T Function(dynamic) dataBuilder,
  }) async {
    final url =
        Uri.https(apiBaseUrl, "$apiContextPath/$apiEndpoint", parameters);

    try {
      final response = await client.get(url, headers: headers);

      switch (response.statusCode) {
        case HttpStatus.ok:
          {
            return dataBuilder(response.body);
          }

        default:
          {
            throw const HttpException(
              "Some error, should be creating errors for each case",
            );
          }
      }
    } catch (e) {
      // TODO this would ideally throw an error of ours, custom one
      throw HttpException(e.toString());
    }
  }
}
