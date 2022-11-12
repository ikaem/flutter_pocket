import 'package:flutter/material.dart';
import 'package:rchitecture_riverpod/src/application/services/routing/app_routes.dart';
import 'package:rchitecture_riverpod/src/features/films/presentation/screens/film_screen.dart';
import 'package:rchitecture_riverpod/src/features/weather/presentation/screens/weather_screen.dart';
import 'package:rchitecture_riverpod/src/presentation/screens/home_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        switch (settings.name) {
          case AppRoutes.screenWeather:
            return const WeatherScreen();

          //
          case AppRoutes.screenFilm:
            // TODO this does not need to be used here - we can get args from settings too
            final filmId = AppRouter.getRouteArgs<int>(context: context);
            //
            return FilmScreen(
              filmId: settings.arguments as int,
              // filmId: 1,
            );
          case AppRoutes.screenHome:
          default:
            return const HomeScreen(title: "Riverpod Star Wars");
        }
      },
    );
  }

  static void navigateToRoute<T extends Object>(
      {required BuildContext context, required String path, T? args}) {
    Navigator.pushNamed(context, path, arguments: args);
  }

  static T? getRouteArgs<T extends Object>({required BuildContext context}) {
    final modalRoute = ModalRoute.of(context);

//

    if (modalRoute == null) return null;

    final args = modalRoute.settings.arguments;
    if (args == null) return null;
    if (args is! T) return null;

    return args;
  }
}
