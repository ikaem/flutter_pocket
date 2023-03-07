import 'package:flutter/material.dart';

enum SortType {
  oldestFirst,
  newestFirst,
}

class KodecoOverlaysScreen extends StatelessWidget {
  const KodecoOverlaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PopupMenuButton(itemBuilder: itemBuilder),
        ],
      ),
    );
  }
}
