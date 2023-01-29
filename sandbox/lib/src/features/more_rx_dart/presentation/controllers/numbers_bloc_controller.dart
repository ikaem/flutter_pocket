import 'dart:developer';
import 'dart:math' hide log;

import 'package:rxdart/rxdart.dart';

class NumbersBlocController {
  NumbersBlocController({
    required this.numbersUseCases,
  });

  final NumbersUseCases numbersUseCases;

  final BehaviorSubject<List<int>> _integersSubject =
      BehaviorSubject<List<int>>();

  Stream<List<int>> get integersStream => _integersSubject.stream;

  Future<void> loadIntegersList() async {
    final List<int> integers = await numbersUseCases.getIntegers();

    // note that we are now actually creating a stream from the list
    // and each event is actually element of the list
    // Stream<int> integersStrea = Stream.fromIterable(integers);
    // WHAT DOES THIS FLAT MAP THING DO? - it just maps
    Stream<int> integersStream = Stream.fromIterable(integers).flatMap((value) {
      // note that we cannot retrn just value here - we have to return stream of this value
      // return value + 1;

      return Stream.value(value + 1);
    });

    // now we listen on that stream - but when do we close it?

    integersStream.listen(
      (event) {
        log("This is onDone - here is data: $event");
      },
      onError: (error) {
        log("This is onError - here is error: $error");
      },
      onDone: () {
        log("This is onDone");
        // why do we not add each element to the sink? - we only do it on done, and we add entire thing?
        _integersSubject.sink.add(integers);
      },
    );
  }
}

class NumbersUseCases {
  Future<List<int>> getIntegers() async {
    final List<int> integers = [];

    final Random random = Random();

    for (int i = 0; i < 5; i++) {
      final int randomInt = random.nextInt(100);
      integers.add(randomInt);
    }

    return integers;

// how to generate random list of integers each time

    // return [
    //   1,
    //   2,
    //   3,
    //   4,
    //   5,
    // ];
  }
}
