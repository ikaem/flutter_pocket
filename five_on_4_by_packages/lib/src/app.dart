import 'package:core_feature/core_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import "package:flutter_bloc/flutter_bloc.dart";
import 'package:players_feature/players_feature.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final FireStore fireStore = FireStore();
    // final PlayersApi playersApi = FireStorePlayersApi(fireStore: fireStore);
    // final PlayersRepository playersRepository =
    //     FirebasePlayersRepository(api: playersApi);

// TODO this would be greate if it was stored in an object so we dont have to do it here
    final PlayersApis playersApis = PlayersApis(
      fireStore: fireStore,
    );
    final PlayersRepositories playersRepositories =
        PlayersRepositories(playersApi: playersApis.playersApi);

    final PlayersUseCases playersUseCases = PlayersUseCases(
      playersRepository: playersRepositories.playersRepository,
    );

// TODO could be a widget to provide this
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<PlayersRepository>(
          create: (context) {
            return playersRepositories.playersRepository;
          },
        ),
        RepositoryProvider<PlayersUseCases>(
          create: (context) {
            return playersUseCases;
          },
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<PlayersBloc>(
            create: (context) {
              return PlayersBloc(
                getPlayersUseCase: playersUseCases.getPlayersUseCase,
                searchPlayersUseCase: playersUseCases.searchPlayersUseCase,
              );
            },
          )
        ],

        // create: (context) => SubjectBloc(),
        child: MaterialApp(
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.dark,
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
