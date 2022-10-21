import 'package:keys_todo/src/features/news/data/source/news_source.dart';
import 'package:keys_todo/src/features/news/models/news_mode.dart';

class NewsRepository {
  const NewsRepository({required this.remoteDataSource});

  final NewsRemoteSource remoteDataSource;

  Future<List<NewsModel>> fetchTopNews() async {
    final ids = await remoteDataSource.fetchTopIds();

    final futureNews = ids.sublist(0, 30).map(
      (id) {
        return remoteDataSource.fetchItem(id);
      },
    ).toList();

    final news = Future.wait(futureNews);

    return news;
  }
}
