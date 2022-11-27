import "package:freezed_annotation/freezed_annotation.dart";

part "dto.freezed.dart";

@freezed
class PlayerDTO with _$PlayerDTO {
  const factory PlayerDTO({
    required String id,
    required String nickname,
  }) = _PlayerDTO;
}
