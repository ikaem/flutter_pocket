import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/cart/presentation/widgets/cart_icon_with_items_amount.dart';
import 'package:rchitecture_riverpod/src/features/weather/domain/types/get_weather_args.dart';
import 'package:rchitecture_riverpod/src/features/weather/presentation/state/providers/weather_controller_provider.dart';
import 'package:rchitecture_riverpod/src/features/weather/presentation/widgets/weather_content.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(
      weatherControllerProvider(
        // ignore: prefer_const_constructors
        const GetWeatherArgs(16.0, 45.88),
      ),
      // weatherControllerProvider,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("A single weather, hardcoded"),
        ),
        // body: const Text("no"),
        // divider
        // body: FutureBuilder(
        //   future: WeatherRepository7Timer(
        //     api: WeatherApi(),
        //     client: Client(),
        //   ).getOne(longitude: 16.0, latitude: 45.0),
        //   builder: (context, snapshot) {
        //     //
        //     return const Text("what");
        //   },
        // ),
        //  divider
        body: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.purple.shade300,
          child: weatherState.when(
            data: (data) {
              //
              return WeatherContent(weather: data);
            },
            error: (error, stackTrace) {
              return const Center(
                child: Text("Error is in"),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
