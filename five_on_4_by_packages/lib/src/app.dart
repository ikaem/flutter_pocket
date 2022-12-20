import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/domain.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/libraries.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/players_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import "package:flutter_bloc/flutter_bloc.dart";

import 'features/core_feature/src/presentation/screens/screens.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.appLogger,
    required this.appUseCases,
  });

  final AppLogger appLogger;
  final AppUseCases appUseCases;

  @override
  Widget build(BuildContext context) {
    return AppMultiUseCasesProvider(
      appUseCases: appUseCases,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<PlayersBloc>(
            create: (context) {
              return PlayersBloc(
                playersUseCases: appUseCases.playersUseCases,
                appLogger: appLogger,
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
