import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/news/models/news_mode.dart';
import 'package:keys_todo/src/features/news/ui/widgets/item/news_item.dart';
import 'package:keys_todo/src/styles/app_colors.dart';
import 'package:keys_todo/src/utils/datetime_utils.dart';

class NewsItemCollapsedTile extends StatelessWidget {
  const NewsItemCollapsedTile({
    super.key,
    required this.newsItem,
    required this.expandTile,
  });

  final NewsModel newsItem;
  final OnToggleTileCollapse expandTile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      onTap: expandTile,
      contentPadding: const EdgeInsets.all(16.0),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            DateTimeUtils.formatDateFromEpoch(newsItem.time),
            style: textTheme.bodyText2,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            newsItem.title,
            style: textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.primary.withAlpha(200),
            ),
          )
        ],
      ),
    );
  }
}
