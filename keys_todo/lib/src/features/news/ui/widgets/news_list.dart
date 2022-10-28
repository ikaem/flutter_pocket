import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/news/data/repository/news_repository.dart';
import 'package:keys_todo/src/features/news/models/news_mode.dart';
import 'package:keys_todo/src/features/news/ui/widgets/item/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
    required this.news,
    required this.newsRepository,
  });

  final List<NewsModel> news;
  final NewsRepository newsRepository;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 90.0),
      children: news.map((e) {
        return Column(
          key: ValueKey<int>(e.id),
          children: [
            NewsItem(
              key: ValueKey(e.id),
              newsItem: e,
              newsRepository: newsRepository,
            ),
            const Divider(
              color: Colors.black54,
              height: 0,
            )
          ],
        );
      }).toList(),
    );
  }
}
