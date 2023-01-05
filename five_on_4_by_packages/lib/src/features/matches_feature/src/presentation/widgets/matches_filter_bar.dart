import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/matches_filter/matches_filter.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/presentation/stores/matches/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _itemSpacing = Spacing.xSmall;

class MatchesFilterBar extends StatelessWidget {
  const MatchesFilterBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: Spacing.mediumLarge),
      child: Row(
        children: [
// ok, this is now with the fgavorites chip
// and then also with tag chips too
// i would personall pass the thing in
          const _FavoritesChip(),
          ...Tag.values.map((e) => _TagChip(tag: e)).toList(),
        ],
      ),
    );
  }
}

class _FavoritesChip extends StatelessWidget {
  const _FavoritesChip({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: _itemSpacing, left: _itemSpacing),
      child: BlocSelector<MatchesBloc, MatchesBlocState, bool>(
        selector: (state) {
          // here we check if fitler is what we want
          // this is cool becase we have a type of state - not entire state all the time
          final bool isFilteringByFavorites =
              state.filter is MatchesFilterByFavorites;

          // real question is how do we know which value does the filter have
          // because here our variable is only tellign us if filter is of the filter by favorites type
          return isFilteringByFavorites;
        },
        builder: (context, isFilteringByFavoritesOnly) {
          return RoundedChoiceChip(
            label: "Favorites",
            isSelected: isFilteringByFavoritesOnly,
            avatar: Icon(
              isFilteringByFavoritesOnly
                  ? Icons.favorite
                  : Icons.favorite_border_outlined,
              color: isFilteringByFavoritesOnly ? Colors.yellow : Colors.orange,
            ),
            onSelected: (isSelected) {
              _releaseFocus(context);

              // TODO and now we gind the bloc
              final bloc = context.read<MatchesBloc>();

              bloc.add(const MatchesFilterByFavoritesToggledEvent());
            },
          );
        },
      ),
    );
  }
}

class _TagChip extends StatelessWidget {
  const _TagChip({
    super.key,
    required this.tag,
  });

  final Tag tag;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isLastTag = tag == Tag.values.last;

    return Padding(
      padding: EdgeInsets.only(right: isLastTag ? 16 : 24, left: 24.0),
      child: BlocSelector<MatchesBloc, MatchesBlocState, Tag?>(
        selector: (state) {
          final MatchesFilter? filter = state.filter;

          // now, we will say that selected tag is only if we have the tag filter, otherwise is null
          final Tag? selectedTag =
              filter is MatchesFilterByTag ? filter.tag : null;

          return selectedTag;
        },
        builder: (context, selectedTag) {
          // now we check if tag is selected
          final bool isCurrentTagSelected = selectedTag == tag;

          return RoundedChoiceChip(
            label: tag.name,
            isSelected: isCurrentTagSelected,
            onSelected: (isSelected) {
              // again, we have to release focus
              _releaseFocus(context);

              final bloc = context.read<MatchesBloc>();

              bloc.add(MatchesTagChangedEvent(
                tag: isSelected ? tag : null,
              ));
            },
          );
        },
      ),
    );
  }
}

void _releaseFocus(BuildContext context) {
  // this is old way
  FocusScope.of(context).unfocus();

  // TODO this is new way
  // FocusManager.instance.primaryFocus?.unfocus();
}
