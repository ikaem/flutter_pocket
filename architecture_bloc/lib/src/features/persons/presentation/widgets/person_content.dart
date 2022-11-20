import 'package:architecture_bloc/src/features/persons/domain/models/person.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/person/bloc/person_bloc.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/person/state/person_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonContent extends StatelessWidget {
  const PersonContent({
    super.key,
    required this.person,
  });

  final Person person;

  @override
  Widget build(BuildContext context) {
    final unnecessaryBlocStateAccess =
        BlocProvider.of<PersonBloc>(context).state;

    return Column(
      children: [
        const Text("Name:"),
        Text(person.name),
        const Divider(),
        const Text(
            "Completely unneeded below, but good for illustration of different ways how to access block for ui data"),
        const Divider(),
        if (unnecessaryBlocStateAccess is PersonSuccessDataState)
          Text(
              "This is unneccary height: ${unnecessaryBlocStateAccess.person.height}"),
      ],
    );
  }
}
