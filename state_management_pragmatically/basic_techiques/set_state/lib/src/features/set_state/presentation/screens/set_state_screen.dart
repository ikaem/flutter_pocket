import 'package:flutter/material.dart';
import 'package:set_state/src/features/set_state/presentation/screens/screen_two.dart';

class SetStateScreen extends StatefulWidget {
  const SetStateScreen({super.key});

  @override
  State<SetStateScreen> createState() => _SetStateScreenState();
}

class _SetStateScreenState extends State<SetStateScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Current counter value: $_counter"),
      const SizedBox(
        height: 24,
      ),
      TextButton(
        onPressed: () async {
          // setState(() => _counter++);
          final int? value = await Navigator.of(context).push(
            MaterialPageRoute<int>(
              builder: (context) => ScreenTwo(
                counter: _counter,
                counterSetter: (value) {
                  setState(() {
                    _counter = value;
                  });
                },
              ),
            ),
          );

          // if (value == null) return;

          // setState(() {
          //   _counter = value;
          // });
        },
        child: const Text("Go to page 2"),
      )
    ]);
  }
}
