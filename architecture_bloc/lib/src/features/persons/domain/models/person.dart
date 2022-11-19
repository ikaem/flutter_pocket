import 'package:architecture_bloc/src/features/persons/data/dtos/person_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "person.freezed.dart";
// TODO possibly not even needed
// part "person.g.dart";

@freezed
class Person with _$Person {
  const factory Person({
    required int id,
    required String name,
    required String gender,
    required String height,
  }) = _Person;

  factory Person.fromDTO(PersonDTO dto) {
    return Person(
      id: dto.id,
      name: dto.name,
      gender: dto.gender,
      height: dto.height,
    );
  }
}
