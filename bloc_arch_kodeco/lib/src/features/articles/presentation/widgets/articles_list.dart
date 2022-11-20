import 'package:bloc_arch_kodeco/src/features/articles/domain/models/article/article.dart';
import 'package:flutter/material.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({
    super.key,
    required this.articles,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];

        return ListTile(
          title: Text(article.attributes?.name ?? ""),
          subtitle: Text(article.attributes?.description ?? ""),
        );
      },
    );
  }
}
