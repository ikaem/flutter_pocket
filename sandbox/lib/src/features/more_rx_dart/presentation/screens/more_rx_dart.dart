// https://medium.com/globant/intro-to-rxdart-7e1429fabce0
// https://dltlabs.medium.com/simplifying-subjects-in-rxdart-2ea6fe94495

import 'package:flutter/material.dart';
import 'package:sandbox/src/features/more_rx_dart/presentation/controllers/numbers_bloc_controller.dart';

class MoreRxDartScreen extends StatefulWidget {
  static const routeName = "more-rx-dart";

  const MoreRxDartScreen({super.key});

  @override
  State<MoreRxDartScreen> createState() => _MoreRxDartScreenState();
}

class _MoreRxDartScreenState extends State<MoreRxDartScreen> {
  late final NumbersBlocController _numbersBlocController;

  @override
  void initState() {
    super.initState();

    final NumbersUseCases numbersUseCases = NumbersUseCases();
    final NumbersBlocController numbersBlocController =
        NumbersBlocController(numbersUseCases: numbersUseCases);
    _numbersBlocController = numbersBlocController;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _numbersBlocController.loadIntegersList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () => _numbersBlocController.loadIntegersList(),
              child: const Text("Load more")),
          Expanded(
            child: StreamBuilder<List<int>>(
              stream: _numbersBlocController.integersStream,
              builder: (context, snapshot) {
                final List<int>? integers = snapshot.data;

                if (integers == null) return const SizedBox.shrink();

                return ListView(
                  children: [
                    for (int integer in integers)
                      Text("I am integer -> $integer")
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
