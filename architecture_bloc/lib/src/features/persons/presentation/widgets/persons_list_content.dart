import 'package:architecture_bloc/src/features/persons/domain/models/person.dart';
import 'package:architecture_bloc/src/features/persons/presentation/screens/person_screen.dart';
import 'package:flutter/material.dart';

class PersonsListContent extends StatelessWidget {
  const PersonsListContent({
    super.key,
    required this.persons,
  });

  final List<Person> persons;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: persons.length,
      itemBuilder: (context, index) {
        final person = persons[index];

        return ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (builderContext) => PersonScreen(id: person.id),
              ),
            );
          },
          title: Text(person.name),
          subtitle: Text(person.height),
        );
      },
    );
  }
}
