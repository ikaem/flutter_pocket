import "package:freezed_annotation/freezed_annotation.dart";

part "remote_dto.freezed.dart";
part "remote_dto.g.dart";

@freezed
class MatchRemoteDTO with _$MatchRemoteDTO {
  const factory MatchRemoteDTO({
    required String id,
    required String name,
  }) = _MatchRemoteDTO;

  factory MatchRemoteDTO.fromJson(Map<String, dynamic> map) =>
      _$MatchRemoteDTOFromJson(map);
}
