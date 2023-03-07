import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({super.key, required this.counter, required this.counterSetter});

  int counter;
  ValueSetter<int> counterSetter;

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //   leading: IconButton(
          //     icon: const Icon(Icons.arrow_back),
          //     onPressed: () => Navigator.of(context).pop(widget.counter),
          //   ),
          ),
      body: Column(
        children: [
          Text("This is counter on page 2: ${widget.counter}"),
          TextButton(
            onPressed: () {
              setState(() {
                widget.counter++;
              });
              widget.counterSetter(widget.counter);
            },
            child: const Text("Increment"),
          )
        ],
      ),
    );
  }
}
