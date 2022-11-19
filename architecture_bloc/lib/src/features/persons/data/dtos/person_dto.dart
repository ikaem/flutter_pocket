import 'package:freezed_annotation/freezed_annotation.dart';

part "person_dto.freezed.dart";
part "person_dto.g.dart";

@freezed
class PersonDTO with _$PersonDTO {
  const factory PersonDTO({
    required int id,
    required String name,
    required String height,
    required String mass,
    // this would use @json key if we did json
    @JsonKey(name: "hair_color") required String hairColor,
    required String skinColor,
    required String eyeColor,
    required String birthColor,
    required String gender,
    required String homeworld,
    required List<String> films,
    required List<String> species,
    required List<String> vehicles,
    required List<String> starships,
    required String created,
    required String edited,
    required String url,
  }) = _PersonDTO;

  factory PersonDTO.fromJson(Map<String, dynamic> map) =>
      _$PersonDTOFromJson(map);
}
