import 'package:bloc_arch_kodeco/src/features/articles/domain/models/article/article.dart';

abstract class ArticlesRepository {
  Future<List<Article>> many(String? query);
}
