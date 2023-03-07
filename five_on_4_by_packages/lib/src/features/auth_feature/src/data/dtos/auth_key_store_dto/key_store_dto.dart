import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "key_store_dto.freezed.dart";

@freezed
class dtoAuthKeyStoreDTO with _$AuthKeyStoreDTO {
  const factory AuthKeyStoreDTO({
    required String token,
    required String id,
    required String name,
  }) = _AuthKeyStoreDTO;
}
