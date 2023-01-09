import 'package:five_on_4_by_packages/src/features/auth_feature/src/domain/use_cases/auth_use_cases/auth_use_cases.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/domain.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/use_cases/matches_use_cases.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/src/presentation/stores/players/exports.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/src/presentation/stores/weather/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppMultiUseCasesProvider extends StatelessWidget {
  const AppMultiUseCasesProvider({
    super.key,
    required this.appUseCases,
    required this.child,
  });

  final Widget child;
  final AppUseCases appUseCases;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthUseCases>(
          create: (context) => appUseCases.authUseCases,
        ),
        RepositoryProvider<PlayersUseCases>(
          create: (context) => appUseCases.playersUseCases,
        ),
        RepositoryProvider<WeatherUseCases>(
          create: (context) => appUseCases.weatherUseCases,
        ),
        RepositoryProvider<MatchesUseCases>(
          create: (context) => appUseCases.matchesUseCases,
        ),
      ],
      child: child,
    );
  }
}
