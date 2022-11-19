import 'package:architecture_bloc/src/features/persons/data/repositories/persons_repository.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/persons/events/persons_event.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/persons/states/persons_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonsBloc extends Bloc<PersonsEvent, PersonsState> {
  // here, we probably want to pass the repository - or that use case thing - just my guess
  // TODO what is that use case - i want a service here, or some controller
  PersonsBloc({
    required this.personsRepository,
  }) : super(const PersonsInitialState()) {
    // here we define what will happen on which event
    on<PersonsFetchDataEvent>(_onPersonsFetchDataEvent);
  }

  // this is just so i don't have to instantiate it here
  final PersonsRepository personsRepository;

  // now we define cases here - these could also be called resolvers

// this accts evnet and emitter for the persons state
  Future<void> _onPersonsFetchDataEvent(
    PersonsFetchDataEvent event,
    Emitter<PersonsState> emitter,
  ) async {
    // now stuff here

    emitter(const PersonsLoadingDataState());

    try {
/* issue here is that i have to call instance of this repo if i dont pass it to the bloc as a prop */
      final persons = await personsRepository.many();
      emitter(
        PersonsSuccessDataState(persons: persons),
      );
    } catch (e) {
      emitter(PersonsErrorDataState(
        message: e.toString(),
      ));
    }
  }
}
