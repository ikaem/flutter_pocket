import "package:freezed_annotation/freezed_annotation.dart";

part "match_bloc_event.freezed.dart";

@freezed
// TODO rename the satte as well to include bloc
class MatchBlocEvent with _$MatchBlocEvent {
  // TODO NOT SURE if we should have id passed here - or if the bloc should get id itself
  const factory MatchBlocEvent.load(String id) = _MatchBlocEventLoad;
  const factory MatchBlocEvent.reload(String id) = _MatchBlocEventReload;
}
