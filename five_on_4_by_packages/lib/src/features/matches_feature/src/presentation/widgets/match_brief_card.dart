import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/match/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MatchBriefCard extends StatelessWidget {
  const MatchBriefCard({
    super.key,
    required this.match,
    required this.top,
    required this.bottom,
    required this.onTap,
    required this.onFavoriteTap,
  });

  final Match match;
  final Widget top;
  final Widget bottom;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.all(0),
      child: InkWell(
        // TODO here - we should probably pass function that accepts id of the match or stuff
        onTap: () => onTap,
        child: Column(
          // TODO why end?
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: Spacing.medium,
                  ),
                  child: top,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onFavoriteTap,
                  icon: const Icon(
                    // TODO will need to handle favorite - now favorite needs to be added to the model
                    // in future - favorite could come from backend, if we had our own
                    // but since we are using firebase, we could also get all players that favorited the match - like a list on a match field - and then just filter on it, when we convert dto to match model
                    // match.isFavorite
                    //     ? Icons.favorite
                    //     : Icons.favorite_border_outlined,

                    Icons.favorite_border_outlined,
                  ),
                ),
              ],
            ),
            // ok, htis is second row now
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.xLarge,
              ),
              child: Text(
                match.name,
                // TODO will need to create custom theme for this app with these fields - because usualy theme does not have these fields?
                // style: theme.matchTextStyle.copyWith(
                //   fontSize: FontSize.large,
                // ),
                style: TextStyle(
                  fontSize: FontSize.large,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
