enum Weather implements Serialize {
  sunny,
  cloudy,
  rainy;

  @override
  String serialize() => name;

  Weather deserialize(String value) {
    final Weather weather = values.firstWhere(
      (element) => element.name == value,
      orElse: () => sunny,
    );

    return weather;
  }
}

abstract class Serialize {
  String serialize();
}
