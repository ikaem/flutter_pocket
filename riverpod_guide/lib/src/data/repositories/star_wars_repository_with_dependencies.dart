import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_guide/src/models/sw_person.dart';

// const baseUrl = "https://swapi.dev/api";

class StarWarsRepositoryWithDependencies {
// this can accept full configured dio client, but we will do it here now in the constructor body
  // StarWarsRepositoryWithDependencies() {
  //   final options = BaseOptions(baseUrl: baseUrl);
  //   _dio = Dio(options);
  // }

  StarWarsRepositoryWithDependencies({
    required Dio dio,
    required String baseUrl,
  }) {
    final options = BaseOptions(baseUrl: baseUrl);
    _dio = Dio(options);
  }

  late final Dio _dio;

  Future<SwPerson> swPerson({
    required String id,
    required CancelToken cancelToken,
  }) async {
    final response = await _dio.get("people/$id", cancelToken: cancelToken);

    if (response.statusCode != 200) {
      throw const HttpException("Unable to fetch person");
    }

// does this not need to be decoded json?
    final Map<String, dynamic> data = response.data;

    final person = SwPerson.fromJson(data);

    return person;
  }
}
