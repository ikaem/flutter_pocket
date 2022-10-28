import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/news/data/repository/news_repository.dart';
import 'package:keys_todo/src/features/news/models/news_mode.dart';
import 'package:keys_todo/src/features/news/ui/controller/news_controller.dart';
import 'package:keys_todo/src/features/news/ui/widgets/item/news_item_collapsed_tile.dart';
import 'package:keys_todo/src/features/news/ui/widgets/item/news_item_expanded_tile.dart';

typedef OnToggleTileCollapse = void Function();

class NewsItem extends StatefulWidget {
  const NewsItem({
    super.key,
    required this.newsItem,
    required this.newsRepository,
  });

  final NewsModel newsItem;
  final NewsRepository newsRepository;

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem>
    with AutomaticKeepAliveClientMixin {
  late final NewsController _newsController;
  NewsModel get newsItem => widget.newsItem;

  bool isItemExpanded = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _newsController = NewsController(widget.newsRepository);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (isItemExpanded) {
      return NewsItemExpandedTile(
        newsItem: newsItem,
        collapseTile: onToggleTileCollapse,
        onLaunchUrl: onHandleLaunchUrl,
      );
    }

    return NewsItemCollapsedTile(
      newsItem: newsItem,
      expandTile: onToggleTileCollapse,
    );
  }

  void onToggleTileCollapse() {
    if (!mounted) return;

    setState(() {
      isItemExpanded = !isItemExpanded;
    });
  }

  Future<void> onHandleLaunchUrl(Uri uri) async {
    final launched = await _newsController.handleLaunchUrl(
      Uri.parse(newsItem.url),
    );

    if (!mounted) return;

    if (!launched) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Couldn't launch the bla"),
        ),
      );
    }
  }
}
