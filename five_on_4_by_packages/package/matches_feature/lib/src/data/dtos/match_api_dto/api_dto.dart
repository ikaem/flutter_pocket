import "package:freezed_annotation/freezed_annotation.dart";

part "api_dto.freezed.dart";
part "api_dto.g.dart";

@freezed
class MatchApiDTO with _$MatchApiDTO {
  const factory MatchApiDTO({
    required String id,
    required String name,
  }) = _MatchApiDTO;

  factory MatchApiDTO.fromJson(Map<String, dynamic> map) =>
      _$MatchApiDTOFromJson(map);
}
