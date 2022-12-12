import "package:freezed_annotation/freezed_annotation.dart";

// TODO thse should then be called api_dto
part "dto.freezed.dart";
part "dto.g.dart";

@freezed
class PlayerDTO with _$PlayerDTO {
  const factory PlayerDTO({
    required String id,
    required String nickname,
  }) = _PlayerDTO;

  factory PlayerDTO.fromJson(Map<String, dynamic> map) =>
      _$PlayerDTOFromJson(map);
}
