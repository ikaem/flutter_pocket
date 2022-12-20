// TODO want to use freezed for this - also, want to make sure that i can use when

// TODO also, specify how to integrate this with equatable
import "package:freezed_annotation/freezed_annotation.dart";

part "match_bloc_state.freezed.dart";

// TODO as per
// https://ppantaleon.medium.com/flutter-bloc-freezed-write-less-code-e916d4e0d4cb

@freezed
class MatchState with _$MatchState {
  const factory MatchState.initial() = _MatchStateInitial;
  const factory MatchState.loading() = _MatchStateLoading;
  const factory MatchState.data({
    // TODO match eventually needs to be match actual
    required String match,
    String? someErrorPossibly,
  }) = _MatchStateData;

  const factory MatchState.error({
    required String error,
  }) = _MatchStateError;
}
