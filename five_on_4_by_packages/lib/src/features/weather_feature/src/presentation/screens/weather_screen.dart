import 'package:five_on_4_by_packages/src/features/weather_feature/src/presentation/presentation.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/src/presentation/stores/weather/cubit/weather_cubit.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final WeatherUseCases weatherUseCases = context.read<WeatherUseCases>();

    return BlocProvider<WeatherCubit>(
      create: (providerContext) => WeatherCubit(
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
          body: Center(
            child: BlocConsumer<WeatherCubit, WeatherState>(
              listener: (listenerContext, state) {
                if (state is! WeatherDataState) return;

                if (state.dataUpdateError == null) return;

                ScaffoldMessenger.of(listenerContext)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      content: Text("Error!"),
                    ),
                  );
              },
              // not the best in this case - but could be if we obtained cubit from elsewhere, so we can work with that instance
              // bloc: WeatherCubit(),
              builder: (builderContext, state) {
                if (state is WeatherInitialState) {
                  return const SizedBox.shrink();
                }
                if (state is WeatherErrorState) {
                  return Column(
                    children: [
                      const Text(
                        "There was an error",
                      ),
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

                final weatherState = state as WeatherDataState;
                final weather = weatherState.weather;
                final isUpdateError = weatherState.dataUpdateError != null;

                return Column(
                  children: [
                    const Text("Temperature:"),
                    Text(weather.temperature.toString()),
                    const SizedBox(
                      height: 48.0,
                    ),
                    if (isUpdateError)
                      const Text(
                          "There was an error with refetching weather data"),
                    const SizedBox(
                      height: 48.0,
                    ),
                    TextButton(
                      onPressed: () {
                        final cubit = builderContext.read<WeatherCubit>();
                        cubit.refetchWeather();
                      },
                      child: const Text("Refresh"),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
