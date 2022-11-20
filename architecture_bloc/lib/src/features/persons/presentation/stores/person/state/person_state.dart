import 'package:architecture_bloc/src/features/persons/domain/models/person.dart';
import 'package:equatable/equatable.dart';

abstract class PersonState extends Equatable {
  const PersonState();
}

class PersonInitialState extends PersonState {
  const PersonInitialState();

  @override
  List<Object?> get props => [];
}

class PersonLoadingDataState extends PersonState {
  const PersonLoadingDataState();

  @override
  List<Object?> get props => [];
}

class PersonErrorDataState extends PersonState {
  const PersonErrorDataState({
    required this.message,
  });

  final String message;

  @override
  List<Object?> get props => [];
}

class PersonSuccessDataState extends PersonState {
  const PersonSuccessDataState({
    required this.person,
  });

  final Person person;

  @override
  List<Object?> get props => [];
}
