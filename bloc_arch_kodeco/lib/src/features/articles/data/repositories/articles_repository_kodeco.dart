import 'package:bloc_arch_kodeco/src/features/articles/data/data_sources/kodeco_api.dart';
import 'package:bloc_arch_kodeco/src/features/articles/data/repositories/articles_repository.dart';
import 'package:bloc_arch_kodeco/src/features/articles/domain/models/article/article.dart';

class ArticlesRepositoryKodeco implements ArticlesRepository {
  const ArticlesRepositoryKodeco({
    required this.api,
  });

  final KodecoAPI api;

  @override
  Future<List<Article>?> many(String? query) async {
    final dtos = await api.many(query);

    final articles = dtos.map<Article>((dto) {
      return Article.fromDTO(dto);
    }).toList();

    return articles;
  }

  @override
  Future<Article> one(String id) async {
    final dto = await api.one(id);

    final article = Article.fromDTO(dto);

    return article;
  }
}
