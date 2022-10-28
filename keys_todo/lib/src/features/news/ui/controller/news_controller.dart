import 'package:keys_todo/src/features/news/data/repository/news_repository.dart';
import 'package:keys_todo/src/features/news/models/news_mode.dart';
import 'package:keys_todo/src/utils/list_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsController {
  NewsController(this.repository);

  final NewsRepository repository;

  // now, we just have to have a function to return all news
  // we will shuffle them here as well

  Future<List<NewsModel>?> handleFetchNews() async {
    try {
      final news = await repository.fetchTopNews();

      final shuffledNews = ListUtils.shuffle<NewsModel>(news);
      // this works too - type of argument passed to function is implicit if we make the fucntion generic
      // final shuffledNews = ListUtils.shuffle(news);

      return shuffledNews;
    } on Exception {
      // scaffoldMessenger.showSnackBar(
      //   const SnackBar(
      //     content: Text("Unable to fetch news"),
      //   ),
      // );
      return null;
    }
  }

  Future<bool> handleLaunchUrl(Uri url) async {
    // final scaffoldMessenger = ScaffoldMessenger.of(context);
    // final bool canLaunch = await canLaunchUrl(url);

    // if (!canLaunch) {
    //   // scaffoldMessenger.showSnackBar(
    //   //     const SnackBar(content: Text("Couldn't launch the article")));
    //   // return;
    //   return false;
    // }

    await launchUrl(url);
    return true;
  }
}
