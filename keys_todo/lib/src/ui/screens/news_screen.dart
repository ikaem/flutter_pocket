import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/news/data/repository/news_repository.dart';
import 'package:keys_todo/src/features/news/models/news_mode.dart';
import 'package:keys_todo/src/features/news/ui/controller/news_controller.dart';
import 'package:keys_todo/src/features/news/ui/widgets/news_list.dart';
import 'package:keys_todo/src/styles/app_colors.dart';
import 'package:keys_todo/src/ui/widgets/layout/progress_widget.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({
    super.key,
    required this.newsRepository,
  });

  final NewsRepository newsRepository;

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  late List<NewsModel> news;
  bool isNewsLoading = true;

  late final NewsController _newsController;

  @override
  void initState() {
    // so here we actually have to assign controller and load news
    _newsController = NewsController(widget.newsRepository);
    // loadNewNews();
    // loading cached news first - if nothing, it will autoamtically load new news
    loadNews();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: AppColors.secondaryColor,
    //   body: isNewsLoading
    //       ? const ProgressWidget()
    //       : NewsList(
    //           news: news,
    //           newsRepository: widget.newsRepository,
    //         ),
    // );

    if (isNewsLoading) return const ProgressWidget();

    return RefreshIndicator(
      onRefresh: loadNewNews,
      color: AppColors.primary,
      child: NewsList(
        news: news,
        newsRepository: widget.newsRepository,
      ),
    );
  }

  void setNewsState(
    List<NewsModel> newNews, {
    bool shouldSavePageStorage = true,
  }) {
    if (!mounted) return;

    setState(() {
      news = newNews;
      isNewsLoading = false;
    });
  }

  Future<void> loadNewNews() async {
    final news = await _newsController.handleFetchNews();
    // becuase of this check, no warning for async gaps
    if (!mounted) return;

    if (news == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Unable to fetch news"),
        ),
      );

      return;
    }

    setNewsState(news);
    // this is caching data
    saveNewsToPageStorage(news);
  }

  Future<void> loadNews() async {
    // first we check if we have news in the page stroage
    final storedNews =
        PageStorage.of(context)!.readState(context, identifier: widget.key);

    if (storedNews == null) {
      await loadNewNews();
      return;
    }

    setNewsState(storedNews);
  }

  void saveNewsToPageStorage(List<NewsModel> newNewsState) {
    PageStorage.of(context)!
        .writeState(context, newNewsState, identifier: widget.key);
  }
}
