import 'package:flutter/material.dart';
import "package:infinite_scroll_pagination/infinite_scroll_pagination.dart";

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// TODO make all screens return their views actually

class MatchesView extends StatefulWidget {
  const MatchesView({super.key});

  @override
  State<MatchesView> createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView> {
  final PagingController<int, Match> _pagingController = PagingController(
    firstPageKey: 1,
  );

  // final;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void _initializeView() {}
  void _disposeView() {}
}
