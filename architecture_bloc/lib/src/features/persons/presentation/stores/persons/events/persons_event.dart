import 'package:equatable/equatable.dart';

abstract class PersonsEvent extends Equatable {
  const PersonsEvent();
}

class PersonsFetchDataEvent extends PersonsEvent {
  const PersonsFetchDataEvent();

  @override
  List<Object?> get props => [];
}

// this is not in the guide, but i made it - not sure if it is needed
// class PersonsErrorDataEvent extends PersonsEvent {
//   const PersonsErrorDataEvent();

//   @override
//   List<Object?> get props => [];
// }

// class Persons
