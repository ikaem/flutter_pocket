import 'dart:async';

class WeatherFakeRepository implements WeatherRepository {
  @override
  Future<double> fetchTemperature(String city) {
    // return Future(() => 42);
    // return Future<double>.value(42);
    // return Future.error('No such city');
    // return Future<double>.error(ArgumentError('$city does not exist', 'city'));
    return Future<double>.delayed(
      const Duration(milliseconds: 500),
      () => throw ArgumentError.value(city),
    );
  }

  @override
  Future<double> fetchTomorrowTemperature(String city) async {
    // this is enough - no need for Future construcotr
    return 42;
  }

  @override
  Future<double> yesterdayTemperature(String city) {
    final Completer<double> completer = Completer<double>();

    if (city == 'pula') {
      completer.complete(42);
    } else {
      completer.completeError(ArgumentError.value(city));
    }

    return completer.future;
  }
}

abstract class WeatherRepository {
  Future<double> fetchTemperature(String city);
  Future<double> fetchTomorrowTemperature(String city);
  Future<double> yesterdayTemperature(String city);
}
