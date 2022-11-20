import 'package:architecture_bloc/src/features/persons/data/data_sources/sw_persons_api.dart';
import 'package:architecture_bloc/src/features/persons/data/repositories/persons_repository.dart';
import 'package:architecture_bloc/src/features/persons/data/repositories/persons_repository_fake.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/person/bloc/person_bloc.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/person/events/person_events.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/person/state/person_state.dart';
import 'package:architecture_bloc/src/features/persons/presentation/widgets/person_content.dart';
import 'package:architecture_bloc/src/features/persons/presentation/widgets/person_error_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<PersonScreen> createState() => _PersonsScreenState();
}

class _PersonsScreenState extends State<PersonScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   final bloc = context.read<PersonBloc>();
  //   bloc.add(
  //     PersonFetchDataEvent(id: widget.id),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // this is just to test, to make sure this is possible to do
    return BlocProvider<PersonBloc>(
      // if false, bloc will not be initialized lazily - it will always initialize
      // lazy: false,
      create: (context) {
        // it would be greate if we could get one single instance here, that is used throughout the app
        final personsApi = SwPersonsApi();
        final PersonsRepository personsRepository =
            PersonsRepositoryFake(api: personsApi);

// TODO this is test to see if we can send the event inline
        return PersonBloc(personsRepository: personsRepository)
          ..add(
            PersonFetchDataEvent(
              id: widget.id,
            ),
          );
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Person screen"),
          ),
          body: BlocBuilder<PersonBloc, PersonState>(
            // bloc: SomeBlocThatIsNotInProvider(),
            // buildWhen: (previous, current) {
            //   // this will return a boolean - and if this boolean is true, builder will rebuild
            // },
            builder: (context, state) {
              if (state is PersonLoadingDataState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is PersonErrorDataState) {
                return PersonErrorContent(message: state.message);
              }
              if (state is PersonSuccessDataState) {
                return PersonContent(
                  person: state.person,
                );
              }

              return const Center(
                child: Text("We are now in initial state for person, still"),
              );
            },
          ),
        ),
      ),
    );
  }
}
