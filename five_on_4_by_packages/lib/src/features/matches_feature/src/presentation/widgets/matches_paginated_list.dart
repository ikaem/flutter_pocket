// TODO this could easily be a common widget

import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart'
    show ExceptionIndicator;
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/match/model.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/presentation/stores/matches/matches.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MatchesPaginatedList extends StatelessWidget {
  const MatchesPaginatedList({
    super.key,
    required this.pagingController,
    required this.onMatchSelected,
  });

  final PagingController<int, Match> pagingController;
  final void Function(Match) onMatchSelected;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    // TODO note here that it is actually fine to get the bloc in the build funciton
    final matchesBloc = context.read<MatchesBloc>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: PagedListView.separated(
        pagingController: pagingController,
        builderDelegate: PagedChildBuilderDelegate<Match>(
          itemBuilder: (context, match, index) {
            // TODO this will need to be on the match model for UI in the future
            // final bool isFavorite = match.isFavorite ?? false;
            final bool isFavorite = true;

            return MatchBriefCard(
                match: match,
                top: const OpeningMatchSvgAsset(),
                bottom: const ClosingMatchSvgAsset(),
                onFavoriteTap: () {
                  // we will send toggle event instead of sending specific event for each
                  matchesBloc.add(MatchesItemFavoriteToggleEvent());
                },
                onTap: () {
                  // TODO here we literally just want to navigate to match - there is no event really
                });
          },
          firstPageErrorIndicatorBuilder: (context) {
            return ExceptionIndicator(
              // no title or message here
              onTryAgain: () =>
                  matchesBloc.add(const MatchesFailedFetchRetriedEvent()),
            );
          },
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 16.0,
        ),
      ),
    );
  }
}
