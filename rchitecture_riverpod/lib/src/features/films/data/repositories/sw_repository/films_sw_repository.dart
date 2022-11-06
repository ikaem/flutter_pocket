import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:rchitecture_riverpod/src/features/films/data/data_sources/sw_api/films_sw_api.dart';
import 'package:rchitecture_riverpod/src/features/films/data/repositories/films_repository.dart';
import 'package:rchitecture_riverpod/src/features/films/domain/models/film.dart';

class FilmsSwRepository implements FilmsRepository {
  final FilmsSwApi api;
  final http.Client client;

  @override
  Future<Film> getOne({required String id}) {}

  Future<T> _getData<T>(
      {required Uri url, required T Function(dynamic data) dataBuilder}) async {
    try {} on SocketException {
      throw const APIError.noInternetConnection();
    }
  }

// this is if we want to post data
  // Future<T> _postData<T>() async {}
}
