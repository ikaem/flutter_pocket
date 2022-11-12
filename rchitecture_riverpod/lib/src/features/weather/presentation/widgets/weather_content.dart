import 'package:flutter/material.dart';
import 'package:rchitecture_riverpod/src/features/weather/domain/models/weather.dart';

class WeatherContent extends StatelessWidget {
  const WeatherContent({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ListView(
      children: [
        const Text("Product:"),
        Text(
          weather.product,
          style: theme.textTheme.headline2,
        )
      ],
    );
  }
}
