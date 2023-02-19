import 'dart:io';
import 'dart:isolate';

Future<void> knowItAllEntryPoint(SendPort askerSendPort) async {
  // we create recevie port for the worker isolate
  final ReceivePort knowItAllReceivePort = ReceivePort();
  // now we want to send knowitall send port to the asker, so we can communicate two way
  askerSendPort.send(knowItAllReceivePort.sendPort);

  final MeaningResolver meaningResolver = MeaningResolver();

  knowItAllReceivePort.listen((message) async {
    if (message == AskerMessagesConstants.greeting) {
      askerSendPort.send(KnowItAllMessagesConstants.greeting);
      return;
    }

    if (message == AskerMessagesConstants.goodbye) {
      askerSendPort.send(KnowItAllMessagesConstants.goodbye);
      return;
    }

    if (message == AskerMessagesConstants.needHelp) {
      askerSendPort.send(KnowItAllMessagesConstants.canHelp);
      return;
    }

    if (message == AskerMessagesConstants.needMeaningOfLife) {
      final int meaningOfLife = await meaningResolver.resolveMeaningOfLife();

      askerSendPort.send(
        KnowItAllResultValue<int>(
          methodName: KnowItAllMessagesConstants.needMeaningOfLife,
          result: meaningOfLife,
        ),
      );
      return;
    }

    if (message == AskerMessagesConstants.needMeaningOfDeath) {
      final int meaningOfDeath = await meaningResolver.resolveMeaningOfDeath();

      askerSendPort.send(
        KnowItAllResultValue<int>(
          methodName: KnowItAllMessagesConstants.needMeaningOfDeath,
          result: meaningOfDeath,
        ),
      );
      return;
    }
  });
}

class MeaningResolver {
  Future<int> resolveMeaningOfLife() async {
    print('Finding meaning of life...');

    sleep(const Duration(seconds: 1));
    return 42;
  }

  Future<int> resolveMeaningOfDeath() async {
    print('Finding meaning of death...');

    sleep(const Duration(seconds: 1));
    return 24;
  }
}

class KnowItAllResultValue<T> {
  const KnowItAllResultValue({
    required this.methodName,
    required this.result,
  });

  final String methodName;
  final T result;
}

abstract class KnowItAllMessagesConstants {
  static const String greeting = 'Hey from know it all';
  // we use goodby in order to kill the isolate on asker side
  static const String goodbye = 'Goodbye';
  static const String canHelp = 'What do you need?';
  static const String needMeaningOfLife = 'resolveMeaningOfLife';
  static const String needMeaningOfDeath = 'resolveMeaningOfDeath';
}

abstract class AskerMessagesConstants {
  static const String greeting = 'Hey from asker';
  static const String goodbye = 'Goodbye';
  static const String needHelp = 'Help needed';
  static const String needMeaningOfLife = 'Need meaning of life';
  static const String needMeaningOfDeath = 'Need meaning of death';
}

// this is asker class
class Asker {
  final ReceivePort _receivePort = ReceivePort();
  // this send port will be used to send messages to knwoit all - this is defined by knowit all
  SendPort? _knowItAllSendPort;
  Isolate? _knowItAllIsolate;

  // here we will create an islate and get is send port
  Future<void> contactKnowItAll() async {
    if (_knowItAllIsolate != null) return;

    _knowItAllIsolate = await Isolate.spawn<SendPort>(
      knowItAllEntryPoint,
      _receivePort.sendPort,
    );

    // now need to add listeners
    // _knowItAllSendPort = await _receivePort.first as SendPort;

    _receivePort.listen((message) {
      if (message is SendPort) {
        _knowItAllSendPort = message;

        _knowItAllSendPort?.send(AskerMessagesConstants.greeting);
        return;
      }

      if (message is KnowItAllResultValue &&
          message.methodName == KnowItAllMessagesConstants.needMeaningOfDeath) {
        dispose();
      }

      if (message is KnowItAllResultValue) {
        print(
          'this is method: ${message.methodName}, and this is response: ${message.result}',
        );
        return;
      }

      if (message == KnowItAllMessagesConstants.greeting) {
        _knowItAllSendPort?.send(AskerMessagesConstants.needHelp);
        return;
      }

      if (message == KnowItAllMessagesConstants.canHelp) {
        _knowItAllSendPort?.send(AskerMessagesConstants.needMeaningOfLife);
        _knowItAllSendPort?.send(AskerMessagesConstants.needMeaningOfDeath);
      }

      // also would need to handle situations when we send goodby - so we can close it
    });
  }

  void dispose() {
    _receivePort.close();
    _knowItAllIsolate?.kill();
    // this is just to keep it all clean
    _knowItAllIsolate = null;
  }
}
