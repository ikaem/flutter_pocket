import 'package:architecture_bloc/src/features/persons/domain/models/person.dart';

abstract class PersonsRepository {
  Future<List<Person>> many();
}
