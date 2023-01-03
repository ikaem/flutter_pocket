import 'package:five_on_4_by_packages/src/features/matches_feature/src/presentation/stores/matches/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:infinite_scroll_pagination/infinite_scroll_pagination.dart";

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MatchesView();
  }
}

// TODO make all screens return their views actually

class MatchesView extends StatefulWidget {
  const MatchesView({super.key});

  @override
  State<MatchesView> createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView> {
  // TODO paging controller will need to be more sophisticated - or simple, and we do an extra fetch - sure
  final PagingController<int, Match> _pagingController = PagingController(
    firstPageKey: 1,
  );

  final TextEditingController _matchesSearchController =
      TextEditingController();

  // TODO this is bloc - they did make getter, instead getting the same variable - possibly better is getter
  MatchesBloc get _matchesBloc => context.read<MatchesBloc>();

  // final;

  @override
  void initState() {
    _initializeView();
    super.initState();
  }

  @override
  void dispose() {
    _disposeView();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void _initializeView() {
    _pagingController.addPageRequestListener((pageKey) {
      final bool isNotInitialPage = pageKey > 1;

      if (!isNotInitialPage) return;

      _matchesBloc.add(
        MatchesNextPageRequestedEvent(pageNumber: pageKey),
      );
    });

    _matchesSearchController.addListener(() {
      _matchesBloc.add(MatchesSearchTermChangedEvent(
        searchTerm: _matchesSearchController.text,
      ));
    });
  }

  void _disposeView() {
    _pagingController.dispose();
    _matchesSearchController.dispose();
  }
}
