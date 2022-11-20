import 'package:architecture_bloc/src/features/persons/domain/models/person.dart';

abstract class PersonsRepository {
  Future<List<Person>> many();
  // TODO probably should not be null - error would do just fine here?
  Future<Person> one(int id);
}
