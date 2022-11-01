import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  static const routeName = "layout-builder";
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constrains) {
        final width = constrains.maxWidth;

        if (width >= 480) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: const Text("Container 1 and long text"),
                ),
              ),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text("Container 2 and long text"),
                ),
              ),
            ],
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 170,
              margin: const EdgeInsets.all(10.0),
              color: Colors.yellow,
              alignment: Alignment.center,
              child: const Text("Container 1 and long text"),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.orange,
                alignment: Alignment.center,
                child: const Text("Container 2 and long text"),
              ),
            ),
          ],
        );
      },
    );

    // other tutorial article
    // return LayoutBuilder(
    //   builder: (context, constraints) {
    //     final maxHeight = constraints.maxHeight;
    //     final maxWidth = constraints.maxWidth;

    //     if (maxWidth < 480) {
    //       return Container(
    //         color: Colors.yellow,
    //         alignment: Alignment.center,
    //         child: const Text(
    //           "Hello centered container",
    //           textAlign: TextAlign.center,
    //         ),
    //       );
    //     }

    //     return SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Container(
    //             margin: const EdgeInsets.all(10.0),
    //             color: Colors.red,
    //             // width: 350,
    //             // height: maxHeight * 0.3,
    //             // width: maxWidth * 0.3,
    //             // this actually aligns the child withing the container
    //             // also note that it spreads the child inside vertically here to take the entire screen here
    //             alignment: Alignment.center,
    //             child: const Text("Hello left container "),
    //           ),
    //           Container(
    //             margin: const EdgeInsets.all(10.0),
    //             color: Colors.red,
    //             // width: 350,

    //             // this cancels alignment.center functionality it seems
    //             // height: maxHeight * 0.3,
    //             // width: maxWidth * 0.3,

    //             // this actually aligns the child withing the container
    //             // also note that it spreads the child inside vertically here to take the entire screen here

    //             alignment: Alignment.center,
    //             child: const Text("Hello right container "),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
