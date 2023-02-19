import 'dart:async';

void manageStreamWithController() {
  final controller = StreamController<String>();
  // this one can be listened by multiple consumers
  final broadcastStreamController = StreamController<String>.broadcast();
  final stream = controller.stream;
  final sink = controller.sink;

  // now listen and handle stream data
  stream.listen(
    (event) {
      // regular listen
      final data = event;
      print(data);
    },
    onError: (Object error) {
      final errorData = error;

      print(errorData);
    },
    onDone: () => print('done'),
  );

  sink.add('Karlo');
  sink.add('Ivan');
  sink.addError(Exception('Someone else'));
  sink.add('Martina');
  sink.close();
}
