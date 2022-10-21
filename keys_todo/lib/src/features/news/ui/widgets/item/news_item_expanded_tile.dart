import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/news/models/news_mode.dart';
import 'package:keys_todo/src/features/news/ui/widgets/item/news_item.dart';
import 'package:keys_todo/src/styles/app_colors.dart';
import 'package:keys_todo/src/utils/datetime_utils.dart';

typedef OnLaunchUrl = Future<void> Function(Uri);

class NewsItemExpandedTile extends StatelessWidget {
  const NewsItemExpandedTile({
    super.key,
    required this.newsItem,
    required this.collapseTile,
    required this.onLaunchUrl,
  });

  final NewsModel newsItem;
  final OnToggleTileCollapse collapseTile;

  final OnLaunchUrl onLaunchUrl;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      tileColor: AppColors.primary.withOpacity(0.3),
      onTap: collapseTile,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateTimeUtils.formatDateFromEpoch(newsItem.time),
                style: textTheme.bodyText2,
              ),
              IconButton(
                onPressed: () async {
                  await onLaunchUrl(
                    Uri.parse(newsItem.url),
                  );
                },
                icon: const Icon(Icons.link),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            newsItem.title,
            style: textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.primary.withAlpha(200),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "by: ${newsItem.by}",
            style: textTheme.bodyText2,
          ),
          Text(
            "${newsItem.kids.length} comments | votes",
            style: textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}
