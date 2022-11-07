import 'dart:convert';
import 'dart:io';

import 'package:freezed_guide/src/data/data-sources/sw_api.dart';
import 'package:freezed_guide/src/models/person/person.dart';
import 'package:http/http.dart';

typedef DataBuilder<T> = T Function(Map<String, Object?> data);

class SwRepository {
  const SwRepository({
    required this.api,
    required this.client,
  });

  final SwApi api;
  final Client client;

  Future<Person> getOne({
    required int id,
    required DataBuilder<Person> dataBuilder,
  }) async {
    final response = await client.get(api.person(id));

    if (response.statusCode != 200) {
      throw const HttpException("No data received");
    }

    final Map<String, dynamic> data = jsonDecode(response.body);

    final person = dataBuilder(data);

    return person;
  }
}
