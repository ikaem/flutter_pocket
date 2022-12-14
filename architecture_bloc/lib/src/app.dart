import 'package:architecture_bloc/src/features/movies/data/data_sources/sw_persons_api.dart';
import 'package:architecture_bloc/src/features/movies/data/repositories/movies_repository.dart';
import 'package:architecture_bloc/src/features/movies/data/repositories/movies_repository_fake.dart';
import 'package:architecture_bloc/src/features/persons/data/data_sources/sw_persons_api.dart';
import 'package:architecture_bloc/src/features/persons/data/repositories/persons_repository.dart';
import 'package:architecture_bloc/src/features/persons/data/repositories/persons_repository_fake.dart';
import 'package:architecture_bloc/src/features/persons/presentation/stores/persons/bloc/persons_bloc.dart';
import 'package:architecture_bloc/src/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // TODO apparently, there is something called repositroy provider, to make sure we only have one single isntance of repositories
    // final personsApi = SwPersonsApi();
    // final PersonsRepository personsRepository =
    //     PersonsRepositoryFake(api: personsApi);

// TODO this should probably be extracted into its own widget - something like reposiotry providrs custom, or such - in services, or helpers?
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<PersonsRepository>(
          create: (context) => PersonsRepositoryFake(api: SwPersonsApi()),
        ),
        RepositoryProvider<MoviesRepository>(
          create: (context) => MoviesRepositoryFake(api: SwMoviesApi()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          // would probably be using .value only when we have value already
          // BlocProvider.value(
          //   value: BlocProvider.of<PersonsBloc>(context),
          // ),
          BlocProvider(
            create: (blocContext) {
              final providedPersonsRepository =
                  blocContext.read<PersonsRepository>();

              return PersonsBloc(
                personsRepository: providedPersonsRepository,
              );
            },
          )
        ],
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
