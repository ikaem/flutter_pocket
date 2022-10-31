import 'package:flutter/material.dart';

class SingleChildScrollViewScreen extends StatelessWidget {
  static const routeName = "single-child-scroll-view";

  const SingleChildScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // pure single child scroll view
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.red,
            height: 300.0,
            alignment: Alignment.center,
            child: const Text("Fixed height content"),
          ),
          Container(
            color: Colors.blue,
            height: 250.0,
            alignment: Alignment.center,
            child: const Text("Fixed height content"),
          ),
        ],
      ),

      // with layout builder and singlechildscroll view
      // child: LayoutBuilder(
      //   builder: (context, constrains) => SingleChildScrollView(
      //     child: ConstrainedBox(
      //       constraints: BoxConstraints(
      //         minHeight: constrains.maxHeight,
      //       ),
      //       child: IntrinsicHeight(
      //         child: Column(
      //           children: [
      //             for (int i = 0; i < 6; i++)
      //               Container(
      //                 height: 200,
      //                 padding: const EdgeInsets.all(16.0),
      //                 child: Image.network(
      //                     "https://images.unsplash.com/photo-1489824904134-891ab64532f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80"),
      //               ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // with list view
      // child: ListView(
      //   children: [
      //     for (int i = 0; i < 6; i++)
      //       Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: Image.network(
      //             "https://images.unsplash.com/photo-1489824904134-891ab64532f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80"),
      //       )
      //   ],
      // ),
    );
  }
}
