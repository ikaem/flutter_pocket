import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Current counter value: $_counter"),
      const SizedBox(
        height: 24,
      ),
      TextButton(
        onPressed: () {
          setState(() => _counter++);
        },
        child: const Text("Increment"),
      )
    ]);
  }
}
