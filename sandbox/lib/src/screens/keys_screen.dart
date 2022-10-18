import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sandbox/src/keys/widgets/stateful_colorful_tile.dart';
import 'package:sandbox/src/keys/widgets/stateles_colorful_tile.dart';

class KeysScreen extends StatefulWidget {
  static const routeName = "/keys-screen";

  const KeysScreen({super.key});

  @override
  State<KeysScreen> createState() => _KeysScreenState();
}

class _KeysScreenState extends State<KeysScreen> {
  late List<Widget> tiles;

  @override
  void initState() {
    super.initState();
    tiles = [
      // const StatelessColorfulTile(),
      // const StatelessColorfulTile(),
      StatefullColorfulTile(
        key: UniqueKey(),
      ),
      StatefullColorfulTile(
        key: UniqueKey(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.sentiment_dissatisfied),
          onPressed: swapTiles,
        ),
        body: Column(
          children: [
            Row(
              children: tiles,
            )
          ],
        ),
      ),
    );
  }

  void swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}
