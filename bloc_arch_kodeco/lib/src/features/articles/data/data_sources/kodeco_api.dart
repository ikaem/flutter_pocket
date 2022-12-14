import 'dart:convert';

import 'package:bloc_arch_kodeco/src/features/articles/data/dtos/article_dto.dart';
import 'package:bloc_arch_kodeco/src/utils/package/http/http_wrapper.dart';

class KodecoAPI {
  const KodecoAPI({
    required this.httpWrapper,
  });

  final HttpWrapper httpWrapper;

  // constant members
  final _apiBaseUrl = "api.raywenderlich.com";
  final _apiContextPath = "api";

  // this should probably be replaced by some client api thing

  Future<List<ArticleDTO>> many(String? query) async {
    final params = getParametersForMany(query);

    final dtos = await httpWrapper.get<List<ArticleDTO>>(
      apiBaseUrl: _apiBaseUrl,
      apiContextPath: _apiContextPath,
      apiEndpoint: "contents",
      parameters: params,
      // TODO this could be not required
      headers: null,
      dataBuilder: getDTOsForMany,
    );

    return dtos;
  }

  Future<ArticleDTO> one(String id) async {
    final dtos = await httpWrapper.get<ArticleDTO>(
      apiBaseUrl: _apiBaseUrl,
      apiContextPath: _apiContextPath,
      apiEndpoint: "contents/$id",
      parameters: null,
      // TODO this could be not required
      headers: null,
      dataBuilder: getDTOForOne,
    );

    return dtos;
  }

  Map<String, Object> getParametersForMany(String? query) {
    return {
      // 'filter[content_types][]': 'article',
      // 'page[size]': '25',
      if (query != null) "filter[q]": query,
    };
  }

  List<ArticleDTO> getDTOsForMany(dynamic source) {
    final json = jsonDecode(source);

    final dtos = json["data"]
        .map<ArticleDTO>(
          (element) => ArticleDTO.fromJson(element),
        )
        .toList();

    return dtos;
  }

  ArticleDTO getDTOForOne(dynamic source) {
    final json = jsonDecode(source);

    final dto = ArticleDTO.fromJson(json["data"]);

    return dto;
  }
}
