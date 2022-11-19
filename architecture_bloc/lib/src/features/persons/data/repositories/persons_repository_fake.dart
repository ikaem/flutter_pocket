import 'package:architecture_bloc/src/features/persons/data/data_sources/sw_persons_api.dart';
import 'package:architecture_bloc/src/features/persons/data/repositories/persons_repository.dart';
import 'package:architecture_bloc/src/features/persons/domain/models/person.dart';

class PersonsRepositoryFake implements PersonsRepository {
  const PersonsRepositoryFake({required this.api});

  final SwPersonsApi api;

  @override
  Future<List<Person>> many() async {
// it seems they are actually ok to have the repo convert data from dto to ui adjsuted

    final dtos = await api.many();

    final persons = dtos.map((dto) => Person.fromDTO(dto)).toList();

    return persons;
  }
}
