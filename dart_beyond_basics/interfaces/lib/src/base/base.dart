class WeatherAppRepository implements WeatherRepository {
  @override
  double getTemperature(String city) {
    return 10.0;
  }
}

abstract class WeatherRepository {
  double getTemperature(String city);

  // this is interesting - factory construtor on an interface that returns a concrete implementation
  factory WeatherRepository() => WeatherAppRepository();
}

abstract class SomeOtherClass {
  bool checkIfAllGood();
}
