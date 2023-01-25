import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/domain.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/libraries.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/navigation/app_router_delegate.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/presentation/cubits/theme_mode/cubit.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/presentation/cubits/theme_mode/cubit_state.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/presentation/providers/five_on_four_theme_provider.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/theme/five_on_four_theme_data.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/players_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import "package:flutter_bloc/flutter_bloc.dart";
import 'package:routemaster/routemaster.dart';

import 'features/auth_feature/src/presentation/stores/auth_status/cubit/cubit.dart';

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
    final FiveOnFourThemeData lightTheme = FiveOnFourThemeLightData();
    final FiveOnFourThemeData darkTheme = FiveOnFourThemeDarkData();

    return AppMultiUseCasesProvider(
      appUseCases: appUseCases,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthStatusCubit>(
            create: (context) => AuthStatusCubit(
              authUseCases: appUseCases.authUseCases,
            ),
          ),
          // TODO not sure if players should be all around the app
          BlocProvider<PlayersBloc>(
            create: (context) {
              return PlayersBloc(
                playersUseCases: appUseCases.playersUseCases,
                appLogger: appLogger,
              );
            },
          ),
          BlocProvider<ThemeModeCubit>(
            create: (context) {
              return ThemeModeCubit(
                themeModeUseCases: appUseCases.themeModeUseCases,
              );
            },
          )
        ],
        child: BlocBuilder<ThemeModeCubit, ThemeModeCubitState>(
          builder: (context, state) {
            return FiveOnFourThemeProvider(
              lightTheme: lightTheme,
              darkTheme: darkTheme,
              child: MaterialApp.router(
                routeInformationParser: const RoutemasterParser(),
                routerDelegate: appRouterDelegate,
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

                theme: lightTheme.materialThemeData,
                darkTheme: darkTheme.materialThemeData,
                themeMode: _getThemeModeFromCubitState(state),
                // home: const HomeScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

// TODO test
ThemeMode _getThemeModeFromCubitState(ThemeModeCubitState state) {
  if (state is ThemeModeCubitStateDark) return ThemeMode.dark;
  if (state is ThemeModeCubitStateLight) return ThemeMode.light;
  return ThemeMode.system;
}
