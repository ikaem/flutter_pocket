import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:weather_feature/src/presentation/presentation.dart';
import 'package:weather_feature/src/presentation/stores/weather/cubit/weather_cubit.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final WeatherUseCases weatherUseCases = context.read<WeatherUseCases>();

    return BlocProvider(
      create: (context) => WeatherCubit(
        // TODO these are parameters that should be passed to funciton - they are not needed for the class per se
        longitude: 16.0,
        latitude: 45.0,
        weatherUseCases: weatherUseCases,
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("A single weather, hardcoded"),
          ),
          body: BlocBuilder<WeatherCubit, WeatherState>(
            // not the best in this case - but could be if we obtained cubit from elsewhere, so we can work with that instance
            // bloc: WeatherCubit(),
            builder: (context, state) {
              if (state is WeatherInitialState) return const SizedBox.shrink();
              if (state is WeatherErrorState) {
                return Column(
                  children: [
                    const Text("There was an error"),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextButton(
                      onPressed: () {
                        final cubit = context.read<WeatherCubit>();
                        cubit.refetchWeather();
                      },
                      child: const Text("Try again"),
                    ),
                  ],
                );
              }
              if (state is WeatherLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              final weather = (state as WeatherDataState).weather;

              return Column(
                children: [
                  const Text("Location:"),
                  Text(weather.product),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
