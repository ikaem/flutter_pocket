import 'package:flutter/material.dart';

class PlayersSearch extends StatelessWidget {
  const PlayersSearch({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: searchController,
        decoration: const InputDecoration(
          hintText: "Search",
        ),
      ),
    );
  }
}
