import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/match/model.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/presentation/stores/matches/bloc/bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

extension MatchesBlocStateExtension on MatchesBlocState {
  PagingState<int, Match> toPagingState() {
    return PagingState(
      error: error,
      nextPageKey: nextPage,
      itemList: matches,
    );
  }
}
