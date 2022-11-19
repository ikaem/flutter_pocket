import 'package:architecture_bloc/src/features/persons/domain/models/person.dart';
import 'package:equatable/equatable.dart';

// could this have been done with freezed too
abstract class PersonsState extends Equatable {
  // we specify constructor to make sure it is a cosntant cosntructo
  const PersonsState();
}

class PersonsInitialState extends PersonsState {
  const PersonsInitialState();

  @override
  // empty list  means that this state is always different - nothing is used to compare the state
  // object is used by default - since there could be various things in the list
  List<Object?> get props => [];
}

class PersonsLoadingDataState extends PersonsState {
  const PersonsLoadingDataState();

  @override
  // empty list  means that this state is always different - nothing is used to compare the state
  // object is used by default - since there could be various things in the list
  List<Object?> get props => [];
}

class PersonsErrorDataState extends PersonsState {
  const PersonsErrorDataState({
    required this.message,
  });

  final String message;

  @override
  // empty list  means that this state is always different - nothing is used to compare the state
  // object is used by default - since there could be various things in the list
  List<Object?> get props => [];
}

class PersonsSuccessDataState extends PersonsState {
  const PersonsSuccessDataState({
    required this.persons,
  });

  final List<Person> persons;

  @override
  // empty list  means that this state is always different - nothing is used to compare the state
  // object is used by default - since there could be various things in the list
  List<Object?> get props => [];
}
