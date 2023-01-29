import 'dart:developer';

import 'package:rxdart/rxdart.dart';

class BehaviorSubjectExample {
  final BehaviorSubject<int> subject = BehaviorSubject<int>();

  void addToSubject(int value) {
    subject.add(value);
    // TODO this is good too
    // subject.sink.add(value);
  }

  void addErrorToSubject(String errorMessage) {
    subject.addError(errorMessage);
    // TODO this is good too
    // subject.sink.addError(errorMessage);
  }

  void listenToStream() {
    // this will get only last value any time someone calls it - and then all new values after
    subject.stream.listen(
      (event) {
        log("this is value: $event");
      },
    );
  }

  Future<void> closeStream() async {
    await subject.close();
  }
}
