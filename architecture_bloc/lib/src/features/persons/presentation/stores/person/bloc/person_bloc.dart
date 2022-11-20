import 'package:architecture_bloc/src/features/persons/data/repositories/persons_repository.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/person/events/person_events.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/person/state/person_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  /* again i would need a persons repository here */

  PersonBloc({
    required this.personsRepository,
  }) : super(const PersonInitialState()) {
    on<PersonFetchDataEvent>(_onPersonFetchDataEvent);
  }

  final PersonsRepository personsRepository;

  // cases
  Future<void> _onPersonFetchDataEvent(
    PersonFetchDataEvent event,
    Emitter<PersonState> emitter,
  ) async {
    // here we have access to the arguemnt in the event

    emitter(const PersonLoadingDataState());

    try {
      final person = await personsRepository.one(event.id);

      emitter(PersonSuccessDataState(person: person));
    } catch (e) {
      emitter(PersonErrorDataState(message: e.toString()));
    }
  }
}
