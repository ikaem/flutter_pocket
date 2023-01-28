import 'dart:async';

import 'package:rxdart/rxdart.dart';

class SubscribeValidator {
  final BehaviorSubject<String> _emailSubject = BehaviorSubject.seeded("@");
  final BehaviorSubject<String> _messageSubject = BehaviorSubject.seeded("");

  Stream<String> get emailStream =>
      _emailSubject.stream.transform(_emailValidationTransformer);
  Sink<String> get _emailSink => _emailSubject.sink;

  Stream<String> get messageStream =>
      _messageSubject.stream.transform(_messageValidationTransformer);
  Sink<String> get _messageSink => _messageSubject.sink;

  Stream<bool> get inputsValidatedStream =>
      Rx.combineLatest2(emailStream, messageStream, (email, message) => true);

  void onEmailChange(String value) {
    _emailSink.add(value);
  }

  void onMessageChange(String value) {
    _messageSink.add(value);
  }

  final StreamTransformer<String, String> _emailValidationTransformer =
      StreamTransformer<String, String>.fromHandlers(
    // TODO note that we can pass different handlers here - data, error, and done
    handleData: (data, sink) {
      if (data.length == 1) {
        return;
      } // - this is becase we have seeded @ - we dont want to do anything
      // lame check if data is email
      if (!data.contains("@")) {
        sink.addError("Please enter valid email");
        return;
      }

      sink.add(data);
    },
  );

  final StreamTransformer<String, String> _messageValidationTransformer =
      StreamTransformer<String, String>.fromHandlers(
    // TODO note that we can pass different handlers here - data, error, and done
    handleData: (data, sink) {
      if (data.length < 8) {
        sink.addError("Message should have at least 8 characters");
        return;
      }

      sink.add(data);
    },
  );
}
