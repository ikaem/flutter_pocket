import 'package:isolates/src/two_way_communication.dart';

Future<void> main() async {
// two way communication isolate
  final Asker asker = Asker();
  await asker.contactKnowItAll();

  ////////////////////////////////////////
  // handling one way communiction islates
  // with isngle message
  // final ReceivePort receivePort = ReceivePort();

  // await Isolate.spawn<SendPort>(
  //   // this is presented as a message handler
  //   oneWayCommunicationEntryPoint,
  //   receivePort.sendPort,
  // );

  // print('something before the message');

  // final String message = await receivePort.first as String;
  // print('message from main islate: $message');

  // with multiple messages
//   final ReceivePort receivePort = ReceivePort();
//   final Isolate isolate = await Isolate.spawn<SendPort>(
//     oneWayCommunicationWithMultipleMessagesEntryPoint,
//     receivePort.sendPort,
//   );

// // note that we listen on receive port
//   receivePort.listen((Object? message) {
//     if (message == null) {
//       receivePort.close();
//       isolate.kill();
//       return;
//     }

//     print(message);
//   });

// with multiple arguments
  // final ReceivePort receivePort = ReceivePort();
  // final Isolate isolate = await Isolate.spawn<ArgmentsForEntryPoint>(
  //   oneWayCommunicationWithMultipleArgumentsEntryPoint,
  //   ArgmentsForEntryPoint(
  //     sendPort: receivePort.sendPort,
  //     countToValue: 25,
  //   ),
  // );

  // receivePort.listen((message) {
  //   if (message == null) {
  //     receivePort.close();
  //     isolate.kill();

  //     return;
  //   }

  //   print('this is in listen: $message');
  // });
}
