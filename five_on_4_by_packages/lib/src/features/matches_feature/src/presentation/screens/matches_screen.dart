import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/match/model.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/matches_filter/matches_filter.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/use_cases/matches_use_cases.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/presentation/stores/matches/bloc/bloc.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:infinite_scroll_pagination/infinite_scroll_pagination.dart";

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthUseCases authUseCases = context.read<AuthUseCases>();
    final MatchesUseCases matchesUseCases = context.read<MatchesUseCases>();

    return BlocProvider<MatchesBloc>(
      create: (context) => MatchesBloc(
        authUseCases: authUseCases,
        matchesUseCases: matchesUseCases,
      ),
      child: const MatchesView(),
    );
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
    // return Container();
    // TODO eventually get our theme
    final ThemeData theme = Theme.of(context);

    // TODO will eventuzally need localization too

    // TODO the app there has styled status bar - i guess to color the status

    return BlocListener<MatchesBloc, MatchesBlocState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Matches Screen"),
        ),
        body: GestureDetector(
            onTap: () {
              _releaseFocus(context);
            },
            child: Column(
              children: const [
                // TODO theme should have screen margin
                // Padding(padding: EdgeInsets.symmetric(horizontal: theme.screenMargin)),
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //     horizontal: 16.0,
                //   ),
                //   child: SearchBar(
                //     controller: _matchesSearchController,
                //     // TODO not necessarily passing this
                //     onChanged: null,
                //   ),
                // ),
                // const MatchesFilterBar(),
                // RefreshIndicator(
                //   child: MatchesPaginatedList(
                //     onMatchSelected: (p0) {},
                //     pagingController: _pagingController,
                //   ),
                //   onRefresh: () async {
                //     _matchesBloc.add(const MatchesRefreshedEvent());

                //     // we want to return a future here - but this will return future implicitly now
                //     // but here it is just for the sake of science - bloc has stream on it - and its first elemenet is future
                //     // final Future<MatchesBlocState> stateChangeFuture =
                //     //     _matchesBloc.stream.first;
                //     // await stateChangeFuture;

                //     // return;
                //   },
                // ),
              ],
            )),
      ),
    );
  }

  void _blocListener(BuildContext context, MatchesBlocState state) {
    final String searchBarText = _matchesSearchController.text;

    final bool isSearching =
        state.filter != null && state.filter is MatchesFilterBySearchTerm;
    if (searchBarText.isEmpty && !isSearching) {
      // TODO i thought this would be done autoamtically
      _matchesSearchController.text = "";
    }

    if (state.refreshError != null) {
      // TODO maybe should be able to differentiate between messages here
      context.showSnackbarMessage("There was a refresh error");
    } else if (state.favoriteToggleError != null) {
      context.showSnackbarMessage("There was sopme favorite toggle error");

      // TODO apparently we have some function for what to do on auth error - not impressed with taht solution - this should be done behind the scenes, not passing it

      // widget.onAuthenticationError(context);
    }

    _pagingController.value = state.toPagingState();
    // _pagingController.value.
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

  void _releaseFocus(BuildContext context) {
    FocusScope.of(context).unfocus();

    // nwe thing
    // FocusManager.instance.primaryFocus?.unfocus();
  }

  void _disposeView() {
    _pagingController.dispose();
    _matchesSearchController.dispose();
  }
}
