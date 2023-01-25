import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  static const routeName = "stack-screen";
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),

            Stack(),
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              textDirection: TextDirection.ltr,
              // fit: StackFit.loose,
              // fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  child: const RotatedBox(
                    quarterTurns: 3,
                    child: Text("something text 3"),
                  ),
                ),
                // Container(
                //   color: Colors.yellow,
                //   width: 200,
                //   height: 200,
                //   child: const Text("something text 2"),
                // ),
                // Container(
                //   color: Colors.green,
                //   width: 100,
                //   height: 100,
                //   child: const Text("something text 3"),
                // ),
                // positioned from here
                Positioned(
                  left: -5,
                  top: -5,
                  child: Container(
                    color: Colors.yellow,
                    width: 90,
                    height: 90,
                    child: const Text("something text 2"),
                  ),
                ),
                Positioned(
                  right: -5,
                  top: -10,
                  child: Container(
                    color: Colors.green,
                    width: 80,
                    height: 80,
                    child: const Text("something text 3"),
                  ),
                ),
              ],
            ),
            // illustration of passthought
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    textDirection: TextDirection.ltr,
                    // fit: StackFit.loose,
                    fit: StackFit.passthrough,
                    // clipBehavior: Clip.none,
                    children: [
                      Container(
                        color: Colors.blue,
                        width: 100,
                        height: 100,
                        child: const Text("something text 3"),
                      ),
                      Container(
                        color: Colors.yellow,
                        width: 90,
                        height: 90,
                        child: const Text("something text 2"),
                      ),
                      Container(
                        color: Colors.green,
                        width: 80,
                        height: 80,
                        child: const Text("something text 3"),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
