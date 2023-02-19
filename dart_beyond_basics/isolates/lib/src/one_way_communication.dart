import 'dart:isolate';

void oneWayCommunicationEntryPoint(
  SendPort sendPort,
) {
  var counter = 0;

  for (var i = 1; i < 1000000000000; i++) {
    counter = i;
  }

  final message = '$counter! Finished!';

  print(message);

  Isolate.exit(sendPort, message);

  // we cannot return from islate entry point
  // return result;
}

void oneWayCommunicationWithMultipleMessagesEntryPoint(
  SendPort sendPort,
) {
  sendPort.send('First message');

  var counter = 0;

  for (var i = 1; i < 1000000000000; i++) {
    counter = i;
  }

  final message = '$counter! Finished!';

  print(message);

  sendPort.send(message);
  sendPort.send(null);
}

void oneWayCommunicationWithMultipleArgumentsEntryPoint(
  ArgmentsForEntryPoint argumentsForEntryPoint,
) {
  final SendPort sendPort = argumentsForEntryPoint.sendPort;
  final int countToValue = argumentsForEntryPoint.countToValue;

  sendPort.send('First message');

  var counter = 0;

  for (var i = 1; i < countToValue; i++) {
    counter = i;
  }

  final message = '$counter! Finished!';

  print(message);

  sendPort.send(message);
  sendPort.send(null);
}

class ArgmentsForEntryPoint {
  const ArgmentsForEntryPoint({
    required this.sendPort,
    required this.countToValue,
  });

  final SendPort sendPort;
  final int countToValue;
}
