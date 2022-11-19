import 'package:architecture_bloc/src/features/persons/presentation/screens/persons_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Home screen body"),
          ElevatedButton(
            onPressed: () {
              // naive navigation
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PersonsScreen(),
                ),
              );
            },
            child: const Text("Fetch star wars people"),
          )
        ],
      ),
    );
  }
}
