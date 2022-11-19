import 'package:architecture_bloc/src/features/persons/presentation/stores/persons/bloc/persons_bloc.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/persons/events/persons_event.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/persons/states/persons_state.dart';
import 'package:architecture_bloc/src/features/persons/presentation/widgets/persons_error_content.dart';
import 'package:architecture_bloc/src/features/persons/presentation/widgets/persons_list_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonsScreen extends StatefulWidget {
  const PersonsScreen({super.key});

  @override
  State<PersonsScreen> createState() => _PersonsScreenState();
}

class _PersonsScreenState extends State<PersonsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final bloc = context.read<PersonsBloc>();
    bloc.add(
      const PersonsFetchDataEvent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    /* not sure if this is enough here to define bloc provider here */
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Persons screen"),
        ),
        // TODO do we really have to use consumer here, if we dont use listener
        // body: BlocConsumer<PersonsBloc, PersonsState>(
        // listener: (context, state) {
        //   // TODO: implement listener
        // },
        body: BlocBuilder<PersonsBloc, PersonsState>(
          builder: (context, state) {
            if (state is PersonsLoadingDataState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is PersonsErrorDataState) {
              return PersonsErrorContent(message: state.message);
            }
            if (state is PersonsSuccessDataState) {
              return PersonsListContent(persons: state.persons);
            }

            // this is now that initial state - should probably be just loading this
            return Container(
              color: Colors.yellow,
              child: const Text(
                "Potentially some persons here",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
