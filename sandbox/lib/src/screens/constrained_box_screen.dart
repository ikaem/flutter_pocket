import 'package:flutter/material.dart';

class ConstrainedBoxScreen extends StatelessWidget {
  static const routeName = "constrained-box-screen";
  const ConstrainedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ConstrainedBox(
                // constraints: const BoxConstraints(minHeight: 80.0),
                // so this will expand as much as constraints of parent widget allow it
                // constraints: const BoxConstraints.expand(),
                // constraints: const BoxConstraints.expand(
                //   // all other dimensions except for htis one will expand
                //   height: 100,
                // ),
                // this tight with sizemakes box excatly with these cosntraints
                // constraints: BoxConstraints.tight(const Size(200, 300)),
                // so loose will not allow size bigger than specified
                // but in general, it will take just the space that is needed
                constraints: BoxConstraints.loose(const Size(100, 300)),
                child: Container(
                  height: 50.0,
                  color: Colors.red,
                  child: const Text("This is 80 pixels after all"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.add,
                  size: 80,
                ),
                // child: Container(
                //   height: 80,
                //   width: 50,
                //   color: Colors.blue,
                //   alignment: Alignment.center,
                //   child: const Text("Inner"),
                // ),
              ),
              // this is good - key is haveing cosntrianed box, and specify min height on it, so max height can be as much as needed
              const SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 50.0),
                child: Container(
                    color: Colors.yellow,
                    child: const Icon(Icons.add, size: 80.0)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
