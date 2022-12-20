import 'package:auth_feature/auth_feature.dart';
import 'package:core_feature/src/domain/use_cases/use_cases.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:players_feature/players_feature.dart';
import 'package:weather_feature/weather_feature.dart';

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
      ],
      child: child,
    );
  }
}
