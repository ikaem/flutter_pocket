import 'package:equatable/equatable.dart';

abstract class PersonEvent extends Equatable {
  const PersonEvent();
}

class PersonFetchDataEvent extends PersonEvent {
  const PersonFetchDataEvent({
    required this.id,
  });

  final int id;

  @override
  List<Object> get props => [];
}
