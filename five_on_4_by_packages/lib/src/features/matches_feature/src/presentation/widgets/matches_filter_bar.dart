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
      ),
    );
  }
}
