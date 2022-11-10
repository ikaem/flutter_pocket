import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:rchitecture_riverpod/src/features/films/data/data_sources/sw_api/films_sw_api.dart';
import 'package:rchitecture_riverpod/src/features/films/data/dto/film_raw.dart';
import 'package:rchitecture_riverpod/src/features/films/data/repositories/films_repository.dart';
import 'package:rchitecture_riverpod/src/features/films/utils/exceptions/api_exception/api_exception.dart';

class FilmsSwRepository implements FilmsRepository {
  FilmsSwRepository({
    required this.api,
    required this.client,
  });

  final FilmsSwApi api;
  final http.Client client;

  @override
  Future<FilmRaw> getOne({required int id}) async {
// TODO just test - this would not be defined here normally

    final FilmRaw filmRaw = await _getData<FilmRaw>(
      url: api.film(id),
      dataBuilder: (data) {
// now have to create data
        final FilmRawDates rawDates = FilmRawDates.fromJson(data);
        final FilmRawInfo rawInfo = FilmRawInfo.fromJson(data);

        // TODO test
        final Map<String, dynamic> rawJson = {
          "dates": rawDates,
          "info": rawInfo,
          "id": id,
        };

        final FilmRaw raw = FilmRaw.fromJson(rawJson);

        return raw;
      },
    );

    return filmRaw;
  }

  Future<T> _getData<T>({
    required Uri url,
    required T Function(dynamic data) dataBuilder,
  }) async {
    try {
      final response = await client.get(url);

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
      //
      throw const ApiException.noInternetConnection();
    }
  }

// this is if we want to post data
  // Future<T> _postData<T>() async {}
}
