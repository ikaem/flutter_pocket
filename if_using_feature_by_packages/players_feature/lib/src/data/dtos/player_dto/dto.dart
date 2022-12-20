import "package:freezed_annotation/freezed_annotation.dart";

// TODO thse should then be called api_dto
part "dto.freezed.dart";
part "dto.g.dart";

@freezed
class PlayerApiDTO with _$PlayerApiDTO {
  const factory PlayerApiDTO({
    required String id,
    required String nickname,
  }) = _PlayerDTO;

  factory PlayerApiDTO.fromJson(Map<String, dynamic> map) =>
      _$PlayerApiDTOFromJson(map);
}
