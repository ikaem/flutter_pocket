import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/auth_status/cubit/auth_status_cubit.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/presentation/widgets/layout/app_bar/app_bar.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/players_feature.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// BlocListener<AuthStatusCubit, AuthStatusState>(
//   listener: (context, state) {
//     final authStatusState = state;
//     // TODO show snackbars
//   },
// ),

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO ok, this is just for test
    // TODO normally, i guess this would be some landing screen, which would decide where we go next
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthStatusCubit, AuthStatusState>(
          listener: (context, state) {
            final authStatusState = state;

            authStatusState.when(
              initial: () => context.showSnackbarMessage("initial"),
              loggedIn: (auth) =>
                  context.showSnackbarMessage("logged in, but in auth status"),
              loggedOut: () =>
                  context.showSnackbarMessage("logged out, but in auth status"),
            );

            // TODO show snackbars
          },
        ),
      ],
      child: SafeArea(
          child: Scaffold(
        appBar: const CustomAppBar(title: "Home Screen"),
        // appBar: AppBar(
        //   title: const Text("Home Screen"),
        // ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  // TODO make better navigation here
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ));
                },
                child: const Text("To login screen"),
              ),
              TextButton(
                onPressed: () {
                  // TODO make better navigation here
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const PlayersScreen();
                    },
                  ));
                },
                child: const Text("To players screen"),
              ),
              TextButton(
                onPressed: () {
                  // TODO make better navigation here
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const PlayersSearchScreen();
                    },
                  ));
                },
                child: const Text("To players search screen"),
              ),
              TextButton(
                onPressed: () {
                  // TODO make better navigation here
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const WeatherScreen();
                    },
                  ));
                },
                child: const Text("To weather screen"),
              ),
              TextButton(
                onPressed: () {
                  // TODO make better navigation here
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const PlayerScreen(
                          playerId: "vtRlluMVicLMeiYlXRdU");
                    },
                  ));
                },
                child: const Text("To player screen"),
              ),
              const Text("Home Screen"),
            ],
          ),
        ),
      )),
    );
  }
}
